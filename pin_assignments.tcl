# Gán chân cho bo mạch Altera DE2 (Cyclone II EP2C35F672C6)

# Đồng hồ và Reset
set_location_assignment PIN_N25 -to i_clk
set_location_assignment PIN_N23 -to i_reset

# Công tắc (i_io_sw[17:0])
set_location_assignment PIN_N1 -to i_io_sw[0]
set_location_assignment PIN_P1 -to i_io_sw[1]
set_location_assignment PIN_P2 -to i_io_sw[2]
set_location_assignment PIN_T7 -to i_io_sw[3]
set_location_assignment PIN_U3 -to i_io_sw[4]
set_location_assignment PIN_U4 -to i_io_sw[5]
set_location_assignment PIN_V1 -to i_io_sw[6]
set_location_assignment PIN_V2 -to i_io_sw[7]
set_location_assignment PIN_V13 -to i_io_sw[8]
set_location_assignment PIN_V14 -to i_io_sw[9]
set_location_assignment PIN_AE11 -to i_io_sw[10]
set_location_assignment PIN_AD11 -to i_io_sw[11]
set_location_assignment PIN_AC12 -to i_io_sw[12]
set_location_assignment PIN_AB12 -to i_io_sw[13]
set_location_assignment PIN_AF10 -to i_io_sw[14]
set_location_assignment PIN_AB24 -to i_io_sw[15]
set_location_assignment PIN_AA23 -to i_io_sw[16]
set_location_assignment PIN_AA24 -to i_io_sw[17]

# LED đỏ (o_io_ledr[17:0])
set_location_assignment PIN_AE22 -to o_io_ledr[0]
set_location_assignment PIN_AE23 -to o_io_ledr[1]
set_location_assignment PIN_AF23 -to o_io_ledr[2]
set_location_assignment PIN_AE24 -to o_io_ledr[3]
set_location_assignment PIN_AF24 -to o_io_ledr[4]
set_location_assignment PIN_AC23 -to o_io_ledr[5]
set_location_assignment PIN_AD23 -to o_io_ledr[6]
set_location_assignment PIN_AB23 -to o_io_ledr[7]
set_location_assignment PIN_AE12 -to o_io_ledr[8]
set_location_assignment PIN_AD12 -to o_io_ledr[9]
set_location_assignment PIN_AE13 -to o_io_ledr[10]
set_location_assignment PIN_AF13 -to o_io_ledr[11]
set_location_assignment PIN_AD15 -to o_io_ledr[12]
set_location_assignment PIN_AC14 -to o_io_ledr[13]
set_location_assignment PIN_AA13 -to o_io_ledr[14]
set_location_assignment PIN_Y13 -to o_io_ledr[15]
set_location_assignment PIN_AA14 -to o_io_ledr[16]
set_location_assignment PIN_Y12 -to o_io_ledr[17]

# LED xanh (o_io_ledg[7:0])
set_location_assignment PIN_AE20 -to o_io_ledg[0]
set_location_assignment PIN_AF20 -to o_io_ledg[1]
set_location_assignment PIN_AE19 -to o_io_ledg[2]
set_location_assignment PIN_AF19 -to o_io_ledg[3]
set_location_assignment PIN_AD19 -to o_io_ledg[4]
set_location_assignment PIN_AC19 -to o_io_ledg[5]
set_location_assignment PIN_Y18 -to o_io_ledg[6]
set_location_assignment PIN_U22 -to o_io_ledg[7]

# Màn hình 7 đoạn (HEX0 đến HEX7)
set_location_assignment PIN_J2 -to o_io_hex0[0]
set_location_assignment PIN_J1 -to o_io_hex0[1]
set_location_assignment PIN_H2 -to o_io_hex0[2]
set_location_assignment PIN_H1 -to o_io_hex0[3]
set_location_assignment PIN_F2 -to o_io_hex0[4]
set_location_assignment PIN_F1 -to o_io_hex0[5]
set_location_assignment PIN_G3 -to o_io_hex0[6]
set_location_assignment PIN_H6 -to o_io_hex1[0]
set_location_assignment PIN_H5 -to o_io_hex1[1]
set_location_assignment PIN_J6 -to o_io_hex1[2]
set_location_assignment PIN_J7 -to o_io_hex1[3]
set_location_assignment PIN_G5 -to o_io_hex1[4]
set_location_assignment PIN_G4 -to o_io_hex1[5]
set_location_assignment PIN_D2 -to o_io_hex1[6]
set_location_assignment PIN_E4 -to o_io_hex2[0]
set_location_assignment PIN_D3 -to o_io_hex2[1]
set_location_assignment PIN_C3 -to o_io_hex2[2]
set_location_assignment PIN_B3 -to o_io_hex2[3]
set_location_assignment PIN_A3 -to o_io_hex2[4]
set_location_assignment PIN_B4 -to o_io_hex2[5]
set_location_assignment PIN_C4 -to o_io_hex2[6]
set_location_assignment PIN_G15 -to o_io_hex3[0]
set_location_assignment PIN_E15 -to o_io_hex3[1]
set_location_assignment PIN_D15 -to o_io_hex3[2]
set_location_assignment PIN_A15 -to o_io_hex3[3]
set_location_assignment PIN_B15 -to o_io_hex3[4]
set_location_assignment PIN_A16 -to o_io_hex3[5]
set_location_assignment PIN_B16 -to o_io_hex3[6]
set_location_assignment PIN_A17 -to o_io_hex4[0]
set_location_assignment PIN_B17 -to o_io_hex4[1]
set_location_assignment PIN_C17 -to o_io_hex4[2]
set_location_assignment PIN_D17 -to o_io_hex4[3]
set_location_assignment PIN_A18 -to o_io_hex4[4]
set_location_assignment PIN_B18 -to o_io_hex4[5]
set_location_assignment PIN_B19 -to o_io_hex4[6]
set_location_assignment PIN_A19 -to o_io_hex5[0]
set_location_assignment PIN_B20 -to o_io_hex5[1]
set_location_assignment PIN_A20 -to o_io_hex5[2]
set_location_assignment PIN_B21 -to o_io_hex5[3]
set_location_assignment PIN_C21 -to o_io_hex5[4]
set_location_assignment PIN_B22 -to o_io_hex5[5]
set_location_assignment PIN_A22 -to o_io_hex5[6]
set_location_assignment PIN_E17 -to o_io_hex6[0]
set_location_assignment PIN_F17 -to o_io_hex6[1]
set_location_assignment PIN_AE18 -to o_io_hex6[2]
set_location_assignment PIN_AF18 -to o_io_hex6[3]
set_location_assignment PIN_Y15 -to o_io_hex6[4]
set_location_assignment PIN_Y16 -to o_io_hex6[5]
set_location_assignment PIN_A23 -to o_io_hex6[6]
set_location_assignment PIN_A24 -to o_io_hex7[0]
set_location_assignment PIN_B24 -to o_io_hex7[1]
set_location_assignment PIN_C24 -to o_io_hex7[2]
set_location_assignment PIN_C25 -to o_io_hex7[3]
set_location_assignment PIN_B25 -to o_io_hex7[4]
set_location_assignment PIN_A25 -to o_io_hex7[5]
set_location_assignment PIN_E1 -to o_io_hex7[6]

# Chân LCD
set_location_assignment PIN_L4 -to o_io_lcd_on
set_location_assignment PIN_K2 -to o_io_lcd_blon
set_location_assignment PIN_K4 -to o_io_lcd_rw
set_location_assignment PIN_K3 -to o_io_lcd_en
set_location_assignment PIN_K1 -to o_io_lcd_rs
set_location_assignment PIN_J1 -to o_io_lcd_data[0]
set_location_assignment PIN_J2 -to o_io_lcd_data[1]
set_location_assignment PIN_H1 -to o_io_lcd_data[2]
set_location_assignment PIN_H2 -to o_io_lcd_data[3]
set_location_assignment PIN_J4 -to o_io_lcd_data[4]
set_location_assignment PIN_J3 -to o_io_lcd_data[5]
set_location_assignment PIN_H4 -to o_io_lcd_data[6]
set_location_assignment PIN_H3 -to o_io_lcd_data[7]

# Bật LCD
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to o_io_lcd_on
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to o_io_lcd_blon