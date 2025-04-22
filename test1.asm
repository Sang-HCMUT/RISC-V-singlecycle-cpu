# Stopwatch - Increment a counter and display it on HEX0-3
lui x1, 0x10002      # Address: 0x10002000 (HEX 0-3)
addi  x2, 0             # counter = 0
loop:
  sw x2, 0(x1)        # write counter to HEX
  addi x2, x2, 1      # counter++
  jal x0, loop        # infinite loop