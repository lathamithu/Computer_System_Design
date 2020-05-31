#include<LPC214X.h>
int main()
{
  int val;
  PINSEL1 = 0x01000000;
  SCS = 0x02;
  FIO1MASK = 0xff00ffff;
  FIODIR = 0x00ff0000;
  ADOCR = 0x000200E02;
  while(1)
  {
    ADOCR |= 0x01000000;
    do
    {
      val = ADODR1;
    }
    while((val & 0x80000000) == 0);
    FIO1PIN = val << 8;
  }
}
