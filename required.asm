### app_sw_to_led.s
# Read from SW, output to LEDR & LEDG
lui x1, 0x10010       # SW
lw x2, 0(x1)

lui x3, 0x10000       # LEDR
sw x2, 0(x3)

lui x4, 0x10001       # LEDG
sw x2, 0(x4)

loop:
  jal x0, loop