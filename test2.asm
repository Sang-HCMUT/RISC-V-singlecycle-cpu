lui x1 65552	lui x1, 0x10010 # SW base
lw x2 0(x1)	lw x2, 0(x1) # value from SW
addi x3 x0 0	li x3, 0 # x3 = count (tens)
addi x4 x0 10	li x4, 10
blt x2 x4 16	blt x2, x4, done_sub
addi x3 x3 1	addi x3, x3, 1
addi x2 x2 -10	addi x2, x2, -10
jal x0 -16	jal x0, copy
slli x3 x3 8	slli x3, x3, 8 # tens to upper byte
or x5 x3 x2	or x5, x3, x2 # merge to show
lui x6 65538	lui x6, 0x10002 # HEX0–3 base
sw x5 0(x6)	jal x0 0