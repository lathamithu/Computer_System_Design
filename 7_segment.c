#include<LPC214x.h>
void delay()
{
  int i,j;
  for(i=0;i<1500;i++)
  for(j=0;j<2500;j++);
}
int main()
{
  int arr[] = { 0xc0, 0xF9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
  int i;
  PINSEL0 = 0x00000000;
  IODIR0 = 0x000000FF;
  while(1)
  {
    for(i=0;i<=9;i++)
    {
      IOSET0 = arr[i];
      delay();
      IOCLR0 = arr[i];
    }
  }
}
