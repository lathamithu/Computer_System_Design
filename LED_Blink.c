#include<LPC214X.h>
void delay();
int main()
{
  IODIR1 = 0x00ff0000;
  while(1)
  {
    IOSET1 = 0x00aa0000;
    delay();
    IOCLR1 = 0x00ff0000;
    delay();
  }
}
void delay()
{
  int i,j;
  for(i=0;i<1000;i++)
  for(j=0;j<2000;j++);
}
