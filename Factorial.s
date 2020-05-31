	AREA code,CODE,READONLY
start
	   LDR r0, = 0x40000000
     LDR r1, [r0, #0]
     MOV r2, #1
loop MUL r3,r2,r1
     MOV r2,r3
     SUB r1,r1,#1
     CMP r1,#0
     BNE loop
     STR r2, [r0,#4]
l b l
end
