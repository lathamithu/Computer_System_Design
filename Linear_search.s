	AREA LINEAR,CODE,READONLY
start
	ldr r0,=0x40000000
  ldr r6,=0x50000000
  mov r1, #04
	ldr r2,[r0, #0]
  ldr r4,=0x40000100
	ldr r5,[r4, #0]
L1	ldr r3,[r0,r1]
	cmp r3,r5
	beq L2
  add r1,r1,#4
	cmp r1,r2
	bne L1
L2	mov r6,#1
l	b l
	end
