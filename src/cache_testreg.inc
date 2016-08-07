%macro cache_testreg 1
		pushad
		pushfd

		test %1, %1
		jz %%_00_1
		jmp %%_00_0
%%_00_1:	print_string _00h, _00h_len
		jmp %%_endtest
%%_00_0:
		cmp %1, 01h
		je %%_01_1
		jmp %%_01_0
%%_01_1:	print_string _01h, _01h_len
		jmp %%_endtest
%%_01_0:		
		cmp %1, 02h
		je %%_02_1
		jmp %%_02_0
%%_02_1:	print_string _02h, _02h_len
		jmp %%_endtest
%%_02_0:		
		cmp %1, 03h
		je %%_03_1
		jmp %%_03_0
%%_03_1:	print_string _03h, _03h_len
		jmp %%_endtest
%%_03_0:		
		cmp %1, 04h
		je %%_04_1
		jmp %%_04_0
%%_04_1:	print_string _04h, _04h_len
		jmp %%_endtest
%%_04_0:		
		cmp %1, 05h
		je %%_05_1
		jmp %%_05_0
%%_05_1:	print_string _05h, _05h_len
		jmp %%_endtest
%%_05_0:		
		cmp %1, 06h
		je %%_06_1
		jmp %%_06_0
%%_06_1:	print_string _06h, _06h_len
		jmp %%_endtest
%%_06_0:		
		cmp %1, 08h
		je %%_08_1
		jmp %%_08_0
%%_08_1:	print_string _08h, _08h_len
		jmp %%_endtest
%%_08_0:		
		cmp %1, 09h
		je %%_09_1
		jmp %%_09_0
%%_09_1:	print_string _09h, _09h_len
		jmp %%_endtest
%%_09_0:		
		cmp %1, 0Ah
		je %%_0A_1
		jmp %%_0A_0
%%_0A_1:	print_string _0Ah, _0Ah_len
		jmp %%_endtest
%%_0A_0:		
		cmp %1, 0Bh
		je %%_0B_1
		jmp %%_0B_0
%%_0B_1:	print_string _0Bh, _0Bh_len
		jmp %%_endtest
%%_0B_0:		
		cmp %1, 0Ch
		je %%_0C_1
		jmp %%_0C_0
%%_0C_1:	print_string _0Ch, _0Ch_len
		jmp %%_endtest
%%_0C_0:		
		cmp %1, 0Dh
		je %%_0D_1
		jmp %%_0D_0
%%_0D_1:	print_string _0Dh, _0Dh_len
		jmp %%_endtest
%%_0D_0:		
		cmp %1, 0Eh
		je %%_0E_1
		jmp %%_0E_0
%%_0E_1:	print_string _0Eh, _0Eh_len
		jmp %%_endtest
%%_0E_0:		
		cmp %1, 21h
		je %%_21_1
		jmp %%_21_0
%%_21_1:	print_string _21h, _21h_len
		jmp %%_endtest
%%_21_0:		
		cmp %1, 22h
		je %%_22_1
		jmp %%_22_0
%%_22_1:	print_string _22h, _22h_len
		jmp %%_endtest
%%_22_0:		
		cmp %1, 23h
		je %%_23_1
		jmp %%_23_0
%%_23_1:	print_string _23h, _23h_len
		jmp %%_endtest
%%_23_0:		
		cmp %1, 25h
		je %%_25_1
		jmp %%_25_0
%%_25_1:	print_string _25h, _25h_len
		jmp %%_endtest
%%_25_0:		
		cmp %1, 29h
		je %%_29_1
		jmp %%_29_0
%%_29_1:	print_string _29h, _29h_len
		jmp %%_endtest
%%_29_0:		
		cmp %1, 2Ch
		je %%_2C_1
		jmp %%_2C_0
%%_2C_1:	print_string _2Ch, _2Ch_len
		jmp %%_endtest
%%_2C_0:		
		cmp %1, 30h
		je %%_30_1
		jmp %%_30_0
%%_30_1:	print_string _30h, _30h_len
		jmp %%_endtest
%%_30_0:		
		cmp %1, 40h
		je %%_40_1
		jmp %%_40_0
%%_40_1:	print_string _40h, _40h_len
		jmp %%_endtest
%%_40_0:		
		cmp %1, 41h
		je %%_41_1
		jmp %%_41_0
%%_41_1:	print_string _41h, _41h_len
		jmp %%_endtest
%%_41_0:		
		cmp %1, 42h
		je %%_42_1
		jmp %%_42_0
%%_42_1:	print_string _42h, _42h_len
		jmp %%_endtest
%%_42_0:		
		cmp %1, 43h
		je %%_43_1
		jmp %%_43_0
%%_43_1:	print_string _43h, _43h_len
		jmp %%_endtest
%%_43_0:		
		cmp %1, 44h
		je %%_44_1
		jmp %%_44_0
%%_44_1:	print_string _44h, _44h_len
		jmp %%_endtest
%%_44_0:		
		cmp %1, 45h
		je %%_45_1
		jmp %%_45_0
%%_45_1:	print_string _45h, _45h_len
		jmp %%_endtest
%%_45_0:		
		cmp %1, 46h
		je %%_46_1
		jmp %%_46_0
%%_46_1:	print_string _46h, _46h_len
		jmp %%_endtest
%%_46_0:		
		cmp %1, 47h
		je %%_47_1
		jmp %%_47_0
%%_47_1:	print_string _47h, _47h_len
		jmp %%_endtest
%%_47_0:		
		cmp %1, 48h
		je %%_48_1
		jmp %%_48_0
%%_48_1:	print_string _48h, _48h_len
		jmp %%_endtest
%%_48_0:		
		cmp %1, 49h
		je %%_49_1
		jmp %%_49_0
%%_49_1:	print_string _49h, _49h_len
		jmp %%_endtest
%%_49_0:		
		cmp %1, 4Ah
		je %%_4A_1
		jmp %%_4A_0
%%_4A_1:	print_string _4Ah, _4Ah_len
		jmp %%_endtest
%%_4A_0:		
		cmp %1, 4Bh
		je %%_4B_1
		jmp %%_4B_0
%%_4B_1:	print_string _4Bh, _4Bh_len
		jmp %%_endtest
%%_4B_0:		
		cmp %1, 4Ch
		je %%_4C_1
		jmp %%_4C_0
%%_4C_1:	print_string _4Ch, _4Ch_len
		jmp %%_endtest
%%_4C_0:		
		cmp %1, 4Dh
		je %%_4D_1
		jmp %%_4D_0
%%_4D_1:	print_string _4Dh, _4Dh_len
		jmp %%_endtest
%%_4D_0:		
		cmp %1, 4Eh
		je %%_4E_1
		jmp %%_4E_0
%%_4E_1:	print_string _4Eh, _4Eh_len
		jmp %%_endtest
%%_4E_0:		
		cmp %1, 4Fh
		je %%_4F_1
		jmp %%_4F_0
%%_4F_1:	print_string _4Fh, _4Fh_len
		jmp %%_endtest
%%_4F_0:		
		cmp %1, 51h
		je %%_51_1
		jmp %%_51_0
%%_51_1:	print_string _51h, _51h_len
		jmp %%_endtest
%%_51_0:		
		cmp %1, 52h
		je %%_52_1
		jmp %%_52_0
%%_52_1:	print_string _52h, _52h_len
		jmp %%_endtest
%%_52_0:		
		cmp %1, 55h
		je %%_55_1
		jmp %%_55_0
%%_55_1:	print_string _55h, _55h_len
		jmp %%_endtest
%%_55_0:		
		cmp %1, 56h
		je %%_56_1
		jmp %%_56_0
%%_56_1:	print_string _56h, _56h_len
		jmp %%_endtest
%%_56_0:		
		cmp %1, 57h
		je %%_57_1
		jmp %%_57_0
%%_57_1:	print_string _57h, _57h_len
		jmp %%_endtest
%%_57_0:		
		cmp %1, 59h
		je %%_59_1
		jmp %%_59_0
%%_59_1:	print_string _59h, _59h_len
		jmp %%_endtest
%%_59_0:		
		cmp %1, 5Ah
		je %%_5A_1
		jmp %%_5A_0
%%_5A_1:	print_string _5Ah, _5Ah_len
		jmp %%_endtest
%%_5A_0:		
		cmp %1, 5Bh
		je %%_5B_1
		jmp %%_5B_0
%%_5B_1:	print_string _5Bh, _5Bh_len
		jmp %%_endtest
%%_5B_0:		
		cmp %1, 5Ch
		je %%_5C_1
		jmp %%_5C_0
%%_5C_1:	print_string _5Ch, _5Ch_len
		jmp %%_endtest
%%_5C_0:		
		cmp %1, 5Dh
		je %%_5D_1
		jmp %%_5D_0
%%_5D_1:	print_string _5Dh, _5Dh_len
		jmp %%_endtest
%%_5D_0:		
		cmp %1, 60h
		je %%_60_1
		jmp %%_60_0
%%_60_1:	print_string _60h, _60h_len
		jmp %%_endtest
%%_60_0:		
		cmp %1, 66h
		je %%_66_1
		jmp %%_66_0
%%_66_1:	print_string _66h, _66h_len
		jmp %%_endtest
%%_66_0:		
		cmp %1, 67h
		je %%_67_1
		jmp %%_67_0
%%_67_1:	print_string _67h, _67h_len
		jmp %%_endtest
%%_67_0:		
		cmp %1, 68h
		je %%_68_1
		jmp %%_68_0
%%_68_1:	print_string _68h, _68h_len
		jmp %%_endtest
%%_68_0:		
		cmp %1, 70h
		je %%_70_1
		jmp %%_70_0
%%_70_1:	print_string _70h, _70h_len
		jmp %%_endtest
%%_70_0:		
		cmp %1, 71h
		je %%_71_1
		jmp %%_71_0
%%_71_1:	print_string _71h, _71h_len
		jmp %%_endtest
%%_71_0:		
		cmp %1, 72h
		je %%_72_1
		jmp %%_72_0
%%_72_1:	print_string _72h, _72h_len
		jmp %%_endtest
%%_72_0:		
		cmp %1, 76h
		je %%_76_1
		jmp %%_76_0
%%_76_1:	print_string _76h, _76h_len
		jmp %%_endtest
%%_76_0:		
		cmp %1, 78h
		je %%_78_1
		jmp %%_78_0
%%_78_1:	print_string _78h, _78h_len
		jmp %%_endtest
%%_78_0:		
		cmp %1, 79h
		je %%_79_1
		jmp %%_79_0
%%_79_1:	print_string _79h, _79h_len
		jmp %%_endtest
%%_79_0:		
		cmp %1, 7Ah
		je %%_7A_1
		jmp %%_7A_0
%%_7A_1:	print_string _7Ah, _7Ah_len
		jmp %%_endtest
%%_7A_0:		
		cmp %1, 7Bh
		je %%_7B_1
		jmp %%_7B_0
%%_7B_1:	print_string _7Bh, _7Bh_len
		jmp %%_endtest
%%_7B_0:		
		cmp %1, 7Ch
		je %%_7C_1
		jmp %%_7C_0
%%_7C_1:	print_string _7Ch, _7Ch_len
		jmp %%_endtest
%%_7C_0:		
		cmp %1, 7Dh
		je %%_7D_1
		jmp %%_7D_0
%%_7D_1:	print_string _7Dh, _7Dh_len
		jmp %%_endtest
%%_7D_0:		
		cmp %1, 7Fh
		je %%_7F_1
		jmp %%_7F_0
%%_7F_1:	print_string _7Fh, _7Fh_len
		jmp %%_endtest
%%_7F_0:		
		cmp %1, 80h
		je %%_80_1
		jmp %%_80_0
%%_80_1:	print_string _80h, _80h_len
		jmp %%_endtest
%%_80_0:		
		cmp %1, 82h
		je %%_82_1
		jmp %%_82_0
%%_82_1:	print_string _82h, _82h_len
		jmp %%_endtest
%%_82_0:		
		cmp %1, 83h
		je %%_83_1
		jmp %%_83_0
%%_83_1:	print_string _83h, _83h_len
		jmp %%_endtest
%%_83_0:		
		cmp %1, 84h
		je %%_84_1
		jmp %%_84_0
%%_84_1:	print_string _84h, _84h_len
		jmp %%_endtest
%%_84_0:		
		cmp %1, 85h
		je %%_85_1
		jmp %%_85_0
%%_85_1:	print_string _85h, _85h_len
		jmp %%_endtest
%%_85_0:		
		cmp %1, 86h
		je %%_86_1
		jmp %%_86_0
%%_86_1:	print_string _86h, _86h_len
		jmp %%_endtest
%%_86_0:		
		cmp %1, 87h
		je %%_87_1
		jmp %%_87_0
%%_87_1:	print_string _87h, _87h_len
		jmp %%_endtest
%%_87_0:		
		cmp %1, 0B0h
		je %%_B0_1
		jmp %%_B0_0
%%_B0_1:	print_string _B0h, _B0h_len
		jmp %%_endtest
%%_B0_0:		
		cmp %1, 0B1h
		je %%_B1_1
		jmp %%_B1_0
%%_B1_1:	print_string _B1h, _B1h_len
		jmp %%_endtest
%%_B1_0:		
		cmp %1, 0B2h
		je %%_B2_1
		jmp %%_B2_0
%%_B2_1:	print_string _B2h, _B2h_len
		jmp %%_endtest
%%_B2_0:		
		cmp %1, 0B3h
		je %%_B3_1
		jmp %%_B3_0
%%_B3_1:	print_string _B3h, _B3h_len
		jmp %%_endtest
%%_B3_0:		
		cmp %1, 0B4h
		je %%_B4_1
		jmp %%_B4_0
%%_B4_1:	print_string _B4h, _B4h_len
		jmp %%_endtest
%%_B4_0:		
		cmp %1, 0BAh
		je %%_BA_1
		jmp %%_BA_0
%%_BA_1:	print_string _BAh, _BAh_len
		jmp %%_endtest
%%_BA_0:		
		cmp %1, 0C0h
		je %%_C0_1
		jmp %%_C0_0
%%_C0_1:	print_string _C0h, _C0h_len
		jmp %%_endtest
%%_C0_0:		
		cmp %1, 0CAh
		je %%_CA_1
		jmp %%_CA_0
%%_CA_1:	print_string _CAh, _CAh_len
		jmp %%_endtest
%%_CA_0:		
		cmp %1, 0D0h
		je %%_D0_1
		jmp %%_D0_0
%%_D0_1:	print_string _D0h, _D0h_len
		jmp %%_endtest
%%_D0_0:		
		cmp %1, 0D1h
		je %%_D1_1
		jmp %%_D1_0
%%_D1_1:	print_string _D1h, _D1h_len
		jmp %%_endtest
%%_D1_0:		
		cmp %1, 0D2h
		je %%_D2_1
		jmp %%_D2_0
%%_D2_1:	print_string _D2h, _D2h_len
		jmp %%_endtest
%%_D2_0:		
		cmp %1, 0D6h
		je %%_D6_1
		jmp %%_D6_0
%%_D6_1:	print_string _D6h, _D6h_len
		jmp %%_endtest
%%_D6_0:		
		cmp %1, 0D7h
		je %%_D7_1
		jmp %%_D7_0
%%_D7_1:	print_string _D7h, _D7h_len
		jmp %%_endtest
%%_D7_0:		
		cmp %1, 0D8h
		je %%_D8_1
		jmp %%_D8_0
%%_D8_1:	print_string _D8h, _D8h_len
		jmp %%_endtest
%%_D8_0:		
		cmp %1, 0DCh
		je %%_DC_1
		jmp %%_DC_0
%%_DC_1:	print_string _DCh, _DCh_len
		jmp %%_endtest
%%_DC_0:		
		cmp %1, 0DDh
		je %%_DD_1
		jmp %%_DD_0
%%_DD_1:	print_string _DDh, _DDh_len
		jmp %%_endtest
%%_DD_0:		
		cmp %1, 0DEh
		je %%_DE_1
		jmp %%_DE_0
%%_DE_1:	print_string _DEh, _DEh_len
		jmp %%_endtest
%%_DE_0:		
		cmp %1, 0E2h
		je %%_E2_1
		jmp %%_E2_0
%%_E2_1:	print_string _E2h, _E2h_len
		jmp %%_endtest
%%_E2_0:		
		cmp %1, 0E3h
		je %%_E3_1
		jmp %%_E3_0
%%_E3_1:	print_string _E3h, _E3h_len
		jmp %%_endtest
%%_E3_0:		
		cmp %1, 0E4h
		je %%_E4_1
		jmp %%_E4_0
%%_E4_1:	print_string _E4h, _E4h_len
		jmp %%_endtest
%%_E4_0:		
		cmp %1, 0EAh
		je %%_EA_1
		jmp %%_EA_0
%%_EA_1:	print_string _EAh, _EAh_len
		jmp %%_endtest
%%_EA_0:		
		cmp %1, 0EBh
		je %%_EB_1
		jmp %%_EB_0
%%_EB_1:	print_string _EBh, _EBh_len
		jmp %%_endtest
%%_EB_0:		
		cmp %1, 0ECh
		je %%_EC_1
		jmp %%_EC_0
%%_EC_1:	print_string _ECh, _ECh_len
		jmp %%_endtest
%%_EC_0:		
		cmp %1, 0F0h
		je %%_F0_1
		jmp %%_F0_0
%%_F0_1:	print_string _F0h, _F0h_len
		jmp %%_endtest
%%_F0_0:		
		cmp %1, 0F1h
		je %%_F1_1
		jmp %%_F1_0
%%_F1_1:	print_string _F1h, _F1h_len
		jmp %%_endtest
%%_F1_0:		
		cmp %1, 0FFh
		je %%_FF_1
		jmp %%_FF_0
%%_FF_1:	print_string _FFh, _FFh_len
		jmp %%_endtest

%%_FF_0:	print_string no_info, no_info_len
%%_endtest:
		popfd
		popad
%endmacro

section .data 
	no_info db 'No matching values', 0xA
	no_info_len equ $ - no_info
