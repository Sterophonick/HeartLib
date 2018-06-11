/*
** Adpcm - Sources\Commun\Adpcm\Encoder\Adpcm.c
** Nicolas ROBERT [NRX] - Hong Kong 2005
*/

////////////////
// Inclusions //
////////////////
#include <stdio.h>
#include <string.h>

////////////
// Macros //
////////////
#define TAG_NO_COMPRESS    "-nocompress"
#define MAX_WAVE_FREQUENCY 22050
#define ADPCM_SAMPLES      32
#define WAVE_SAMPLES       (ADPCM_SAMPLES*2)

///////////
// Types //
///////////
typedef struct
{
   FILE* file;
   struct
   {
      unsigned short audioFormat;
      unsigned short numberChannels;
      unsigned long sampleRate;
      unsigned long byteRate;
      unsigned short blockAlign;
      unsigned short bitsPerSample;
   }
   format;
   unsigned char bytesPerSample;
   unsigned long numberSamples;
}
Wave;

typedef struct
{
   FILE* file;
   signed long lastSample;
   signed short lastIndex;
}
Adpcm;

////////////////////////
// Variables globales //
////////////////////////
const signed char adpcmModifyIndex[8]={-1,-1,-1,-1,2,4,6,8};

const signed short adpcmStep[89]=
{
       7,    8,    9,   10,   11,   12,   13,   14,   16,
      17,   19,   21,   23,   25,   28,   31,   34,   37,
      41,   45,   50,   55,   60,   66,   73,   80,   88,
      97,  107,  118,  130,  143,  157,  173,  190,  209,
     230,  253,  279,  307,  337,  371,  408,  449,  494,
     544,  598,  658,  724,  796,  876,  963, 1060, 1166,
    1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749,
    3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484,
    7132, 7845, 8630, 9493,10442,11487,12635,13899,15289,
   16818,18500,20350,22385,24623,27086,29794,32767
};

//////////////
// WaveInit //
//////////////
unsigned char WaveInit(Wave* wave)
{
   unsigned char buffer[12];
   unsigned char formatOk;
   unsigned long length;

   // Read the header
   if(fread(buffer,sizeof(unsigned char),12,wave->file)<12)
      return(1);

   // Check for the RIFF & WAVE signatures
   if(memcmp("RIFF",buffer,4)||memcmp("WAVE",buffer+8,4))
      return(1);

   // Parse the chunks
   formatOk=0;
   while(fread(buffer,sizeof(unsigned char),4,wave->file))
   {
      fread(&length,sizeof(unsigned long),1,wave->file);
      if(!memcmp("fmt ",buffer,4))
      {
         // Read the format
         if(length<16)
            return(1);

         fread(&wave->format,sizeof(wave->format),1,wave->file);
         fseek(wave->file,length-sizeof(wave->format),SEEK_CUR);
         formatOk=1;

         // Compute the "bytesPerSample" from the "bitsPerSample"
         wave->bytesPerSample=(wave->format.bitsPerSample+7)>>3;
      }
      else if(!memcmp("data",buffer,4))
      {
         // We now have some data; first check we got the format
         if(!formatOk)
            return(1);

         // Compute the actual number of samples
         wave->numberSamples=length/(wave->format.numberChannels*wave->bytesPerSample);

         // Everything seems ok!
         return(0);
      }
      else
      {
         // Skip unrecognized chunk types
         fseek(wave->file,length,SEEK_CUR);
      }
   }

   // We haven't found the data!
   return(1);
}

/////////////////
// AdpcmEncode //
/////////////////
void AdpcmEncode(Adpcm* adpcm,signed short* source,unsigned char* dest,unsigned short length)
{
   signed long sample;
   signed short index;
   signed short step;
   unsigned char byte;
   unsigned char code;
   unsigned char sign;
   signed short diff;

   // Retrieve the previous data
   sample=adpcm->lastSample;
   index=adpcm->lastIndex;

   // Process the samples
   byte=0;
   while(length)
   {
      // Get the step
      step=adpcmStep[index];

      // Compute the code
      diff=(*source++)-sample;
      if(diff<0)
      {
         diff=-diff;
         sign=8;
      }
      else
         sign=0;
      code=(diff<<2)/step;
      if(code>7)
         code=7;

      // Modify the previous sample
      diff=step>>3;
      if(code&1)
         diff+=step>>2;
      if(code&2)
         diff+=step>>1;
      if(code&4)
         diff+=step;
      if(sign)
      {
         sample-=diff;
         if(sample<-32768)
            sample=-32768;
      }
      else
      {
         sample+=diff;
         if(sample>32767)
            sample=32767;
      }

      // Compute the next index
      index+=adpcmModifyIndex[code];
      if(index<0)
         index=0;
      else if(index>88)
         index=88;

     // Store the sample
      code|=sign;
      if(length&1)
         *dest++=(code<<4)|byte;
      else
         byte=code;

      // Next sample...
      --length;
   }

   // Store the current data
   adpcm->lastSample=sample;
   adpcm->lastIndex=index;
}

//////////
// main //
//////////
int main(int argc,char** argv)
{
   unsigned char noCompress;
   unsigned char fileName[256];

   Wave wave;
   unsigned char waveShiftValue;
   unsigned char waveCounter;
   unsigned short waveChannel;
   signed long waveSumSamples;
   signed long waveLongSample;
   signed short waveSamples[WAVE_SAMPLES];

   Adpcm adpcm;
   unsigned long adpcmLength;
   unsigned char adpcmCounter;
   unsigned char adpcmSamples[ADPCM_SAMPLES];

   // Check the arguments
   if(argc==4)
      noCompress=0;
   else if(argc==5 && !strcmp(argv[4],TAG_NO_COMPRESS))
      noCompress=1;
   else
   {
      fprintf(stderr,"Usage: %s name inPath outPath [%s]\n",argv[0],TAG_NO_COMPRESS);
      return(1);
   }

   // Open & check the wave file
   sprintf(fileName,"%s/%s.wav",argv[2],argv[1]);
   wave.file=fopen(fileName,"rb");
   if(!wave.file)
   {
      fputs("Error: couldn't open the wave file\n",stderr);
      return(1);
   }
   if(WaveInit(&wave))
   {
      fputs("Error: incorrect wave file\n",stderr);
      fclose(wave.file);
      return(1);
   }
   if(!noCompress && wave.format.sampleRate>MAX_WAVE_FREQUENCY)
   {
      fprintf(stderr,"Error: the sample rate is greater than %dHz\n",MAX_WAVE_FREQUENCY);
      fclose(wave.file);
      return(1);
   }

   // Open the adpcm file
   sprintf(fileName,"%s/%s.s",argv[3],argv[1]);
   adpcm.file=fopen(fileName,"w");
   if(!adpcm.file)
   {
      fputs("Error: couldn't write to adpcm file\n",stderr);
      fclose(wave.file);
      return(1);
   }
   fprintf(stdout,"Creating %s... ",fileName);
   fflush(stdout);

   // Compute the number of data in our adpcm file
   if(noCompress)
      adpcmLength=wave.numberSamples;
   else
   {
      adpcmLength=(wave.numberSamples+1)>>1;

      // Also, initialize the adpcm
      adpcm.lastSample=0;
      adpcm.lastIndex=0;
   }

   // Compute the number of bits the value will need to be shifted to fit on 16 bits
   waveShiftValue=(wave.bytesPerSample-2)<<3;

   // Write the header of our adpcm file
   fprintf(adpcm.file,
           ".section .rodata\n.global ADPCM_%s\n.align 2\nADPCM_%s:\n.word %lu\n.word %lu\n.byte %d\n.space 3",
           argv[1],
           argv[1],
           wave.format.sampleRate,
           adpcmLength,
           noCompress);

   // Process the wave file...
   while(wave.numberSamples)
   {
      // Read some samples
      for(waveCounter=0;waveCounter<WAVE_SAMPLES && wave.numberSamples;++waveCounter,--wave.numberSamples)
      {
         // We compute the average of all the channels and put the result on 16 bits
         waveSumSamples=0;
         for(waveChannel=wave.format.numberChannels;waveChannel;--waveChannel)
         {
            if(wave.bytesPerSample==1)
               waveSumSamples+=(signed short)((fgetc(wave.file)<<8)-32768);
            else
            {
               fread(&waveLongSample,wave.bytesPerSample,1,wave.file);
               waveSumSamples+=(signed short)(waveLongSample>>waveShiftValue);
            }
         }
         waveSamples[waveCounter]=waveSumSamples/wave.format.numberChannels;
      }

      // Let's put these data in the output file
      if(noCompress)
      {
         // Directly save the samples to the file (no compression)
         fprintf(adpcm.file,"\n.byte %d",(unsigned char)(waveSamples[0]>>8));
         for(adpcmCounter=1;adpcmCounter<waveCounter;++adpcmCounter)
            fprintf(adpcm.file,",%d",(unsigned char)(waveSamples[adpcmCounter]>>8));
      }
      else
      {
         // Be sure we have an event number of data
         if(waveCounter&1)
            waveSamples[waveCounter++]=0;

         // Encoding...
         AdpcmEncode(&adpcm,waveSamples,adpcmSamples,waveCounter);

         // Save the compressed data
         waveCounter>>=1;
         fprintf(adpcm.file,"\n.byte %d",adpcmSamples[0]);
         for(adpcmCounter=1;adpcmCounter<waveCounter;++adpcmCounter)
            fprintf(adpcm.file,",%d",adpcmSamples[adpcmCounter]);
      }

      // Update the "adpcmLength" to later check everything was ok...
      adpcmLength-=waveCounter;
   }

   // Close the files
   fputc('\n',adpcm.file);
   fclose(adpcm.file);
   fclose(wave.file);

   // Just a final little check!
   if(adpcmLength)
      fprintf(stdout,"Error, %lu bytes missing\n",adpcmLength);
   else
      fputs("Done\n",stdout);

   // Bye bye...
   return(0);
}
