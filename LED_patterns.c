#include<LPC214x.h>
void delay()
{
  int i,j;
  for(i=0;i<1000;i++)
  for(j=0;j<2000;j++);
}
int main()
{
  PINSEL0 = 0x00000000;
  PINSEL2 = 0x00000000;
  IODIR1 = 0x00ff0000;
  IOPIN0 = 0x00004000;
  while(1)
  {
    if(IOPIN0 & 0x00004000)
    {
      IOSET1 = 0x00aa0000;
      delay();
      IOCLR1 = 0x00ff0000;
      delay();
    }
    else
    {
      IOSET1 = 0x00ee0000;
      delay();
      IOCLR1 = 0x00ff0000;
      delay();
    }
  }
}
