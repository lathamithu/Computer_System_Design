// b^2 - 4ac

AREA code2,CODE,READONLY
start
	ldr r0,=0x40000000
	ldr r1,[r0,#00]
	mul r4,r1,r1
	ldr r2,[r0,#01]
	ldr r3,[r0,#03]
	mul r5,r2,r3
	lsl r5,#0x02
	sub r3,r4,r5
	str r3,[r0,#04]
l	b l
	end
