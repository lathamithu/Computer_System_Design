  AREA code 1, CODE, READONLY
start 
  LDR r0, = 0x40000000
  LDR r1, = 0x40000020
  LDR r2, = 0x40000040
  LDR r3, [r0, #00]
  LDR r4, [r1, #00]
  LDR r5, [r2, #00]
  LDR r6, = 0x40000050
  LDR r7, = 0x40000060
  LDR r8, = 0x40000070
  STR r3, [r6, #00]
  STR r4, [r7, #00]
  STR r5, [r8, #00] 
end
