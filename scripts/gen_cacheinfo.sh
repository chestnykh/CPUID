#!/bin/bash



#param 1 - register name that testing in this macro

i=1
ten=10

cmpregname="%1"

echo -e "%macro cache_testreg 1" 
echo -e "\t\tpushad\n\t\tpushfd"


for i in 1 2 3 4 5 6 8 9
do
	echo -e "\t\tcmp "$cmpregname", 0"$i"h"
	echo -e "\t\tje %%_0"$i"_1"
	echo -e "\t\tjmp %%_0"$i"_0"
	echo -e "%%_0"$i"_1:\tprint_string _0"$i"h, _0"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_0"$i"_0:\t\t"
	let "i = i + 1"
done


for i in 'A' 'B' 'C' 'D' 'E'
do
	echo -e "\t\tcmp "$cmpregname", 0"$i"h"
	echo -e "\t\tje %%_0"$i"_1"
	echo -e "\t\tjmp %%_0"$i"_0"
	echo -e "%%_0"$i"_1:\tprint_string _0"$i"h, _0"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_0"$i"_0:\t\t"
done

for i in 1 2 3 5 9
do
	echo -e "\t\tcmp "$cmpregname", 2"$i"h"
	echo -e "\t\tje %%_2"$i"_1"
	echo -e "\t\tjmp %%_2"$i"_0"
	echo -e "%%_2"$i"_1:\tprint_string _2"$i"h, _2"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_2"$i"_0:\t\t"
done


echo -e "\t\tcmp "$cmpregname", 2Ch" 
echo -e "\t\tje %%_2C_1" 
echo -e "\t\tjmp %%_2C_0"
echo -e "%%_2C_1:\tprint_string _2Ch, _2Ch_len"
echo -e "\t\tjmp %%_endtest"
echo -e "%%_2C_0:\t\t" 


echo -e "\t\tcmp "$cmpregname", 30h" 
echo -e "\t\tje %%_30_1"
echo -e "\t\tjmp %%_30_0"
echo -e "%%_30_1:\tprint_string _30h, _30h_len"
echo -e "\t\tjmp %%_endtest"
echo -e "%%_30_0:\t\t"

for i in 0 1 2 3 4 5 6 7 8 9 'A' 'B' 'C' 'D' 'E' 'F'
do
	echo -e "\t\tcmp "$cmpregname", 4"$i"h"
	echo -e "\t\tje %%_4"$i"_1"
	echo -e "\t\tjmp %%_4"$i"_0"
	echo -e "%%_4"$i"_1:\tprint_string _4"$i"h, _4"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_4"$i"_0:\t\t"
done

for i in 1 2 5 6 7 9 'A' 'B' 'C' 'D'
do
	echo -e "\t\tcmp "$cmpregname", 5"$i"h"
	echo -e "\t\tje %%_5"$i"_1"
	echo -e "\t\tjmp %%_5"$i"_0"
	echo -e "%%_5"$i"_1:\tprint_string _5"$i"h, _5"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_5"$i"_0:\t\t"
done

for i in 0 6 7 8
do
	echo -e "\t\tcmp "$cmpregname", 6"$i"h"
	echo -e "\t\tje %%_6"$i"_1"
	echo -e "\t\tjmp %%_6"$i"_0"
	echo -e "%%_6"$i"_1:\tprint_string _6"$i"h, _6"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_6"$i"_0:\t\t"
done


for i in 0 1 2 6 8 9 'A' 'B' 'C' 'D' 'F'
do
	echo -e "\t\tcmp "$cmpregname", 7"$i"h"
	echo -e "\t\tje %%_7"$i"_1"
	echo -e "\t\tjmp %%_7"$i"_0"
	echo -e "%%_7"$i"_1:\tprint_string _7"$i"h, _7"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_7"$i"_0:\t\t"
done

for i in 0 2 3 4 5 6 7
do
	echo -e "\t\tcmp "$cmpregname", 8"$i"h"
	echo -e "\t\tje %%_8"$i"_1"
	echo -e "\t\tjmp %%_8"$i"_0"
	echo -e "%%_8"$i"_1:\tprint_string _8"$i"h, _8"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_8"$i"_0:\t\t"
done

for i in 0 1 2 3 4 'A'
do
	echo -e "\t\tcmp "$cmpregname", 0B"$i"h"
	echo -e "\t\tje %%_B"$i"_1"
	echo -e "\t\tjmp %%_B"$i"_0"
	echo -e "%%_B"$i"_1:\tprint_string _B"$i"h, _B"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_B"$i"_0:\t\t"
done 

for i in 0 'A'
do
	echo -e "\t\tcmp "$cmpregname", 0C"$i"h"
	echo -e "\t\tje %%_C"$i"_1"
	echo -e "\t\tjmp %%_C"$i"_0"
	echo -e "%%_C"$i"_1:\tprint_string _C"$i"h, _C"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_C"$i"_0:\t\t"
done

for i in 0 1 2 6 7 8 'C' 'D' 'E'
do
	echo -e "\t\tcmp "$cmpregname", 0D"$i"h"
	echo -e "\t\tje %%_D"$i"_1"
	echo -e "\t\tjmp %%_D"$i"_0"
	echo -e "%%_D"$i"_1:\tprint_string _D"$i"h, _D"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_D"$i"_0:\t\t"
done

for i in 2 3 4 'A' 'B' 'C'
do
	echo -e "\t\tcmp "$cmpregname", 0E"$i"h"
	echo -e "\t\tje %%_E"$i"_1"
	echo -e "\t\tjmp %%_E"$i"_0"
	echo -e "%%_E"$i"_1:\tprint_string _E"$i"h, _E"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_E"$i"_0:\t\t"
done

for i in 0 1 'F'
do
	echo -e "\t\tcmp "$cmpregname", 0F"$i"h"
	echo -e "\t\tje %%_F"$i"_1"
	echo -e "\t\tjmp %%_F"$i"_0"
	echo -e "%%_F"$i"_1:\tprint_string _F"$i"h, _F"$i"h_len"
	echo -e "\t\tjmp %%_endtest"
	echo -e "%%_F"$i"_0:\t\t"
done



echo -e "%%_endtest:" 
echo -e "\t\tpopfd\n\t\tpopad"
echo -e "%endmacro"









