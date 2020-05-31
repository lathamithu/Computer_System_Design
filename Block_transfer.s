	AREA WITHOUT_OVERLAP,CODE,READONLY
start
	ldr r0,=0x40000000
	ldr r1,=0x40000050
	ldr r2,[r0],#04
loop ldr r3,[r0],#04
	str r3,[r1],#04
	subs r2,r2,#0x01
	bne loop
l	b l
	end
		
