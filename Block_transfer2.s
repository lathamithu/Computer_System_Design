	AREA WITH_OVERLAP,CODE,READONLY
start
	ldr r0,=0x40000000
	ldr r1,[r0],#04
	add r0,r0,r1,lsl #02
loop ldr r3,[r0,#-0x04]
	str r3,[r0],#-0x04
	subs r1,r1,#0x01
	bne loop
l	b l
	end
