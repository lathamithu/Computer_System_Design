// ax^2 + bx + c

AREA code1,CODE,READONLY
start
	ldr r0,=0x40000000
	ldr r1,[r0,#00]
	ldr r2,[r0,#04]
	mul r3,r2,r2
	mul r7,r1,r3
	ldr r4,[r0,#08]
	mul r4,r2,r4
	ldr r5,[r0,#12]
	add r6,r7,r4
	add r6,r6,r5
	str r6,[r0,#16]
l	b l
	end
