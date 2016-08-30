#!/bin/sh
clear
cd /usr/game/share/
chmod -R 770 game
chmod -R 770 db
wait
echo
echo -e "\033[32mMETIN2! \033[0m"
echo
echo -e "\033[32mKAC KANAL ACMAK ISTIYORSUN? \033[0m"
echo -e "\033[32m
1 - 1 KANAL \n 
2 - 2 KANAL \n
3 - 3 KANAL \n
4 - 4 KANAL \033[0m"
echo
read chs

case $chs in 
1*)
	
	clear
	echo -e "\033[32m \nLOGLAR TEMIZLENIYOR ..\033[0m"
	cd /usr/game && sh temizle.sh
	sleep 2
	clear
	echo -e "\033[32m \nDB ACILIYOR ..\033[0m"
	cd /usr/game/cores/db/
	./db &
	sleep 5
	clear
	echo -e "\033[32m \nGIRISLER ACILIYOR ..\033[0m"
	cd /usr/game/cores/auth/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL1 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel1/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nGAME99 ACILIYOR ..\033[0m"
	cd /usr/game/cores/game99/
	./game &
	sleep 5
	clear
	echo
	echo -e "\033[32m \n KANAL1 ACILDI ..\033[0m"
	echo -e "\033[32m \n METIN2 AKTIF! ..\033[0m"
	echo
	
;;
2*)
	
	clear
	echo -e "\033[32m \nLOGLAR TEMIZLENIYOR ..\033[0m"
	cd /usr/game && sh temizle.sh
	sleep 2
	clear
	echo -e "\033[32m \nDB ACILIYOR ..\033[0m"
	cd /usr/game/cores/db/
	./db &
	sleep 5
	clear
	echo -e "\033[32m \nGIRISLER ACILIYOR ..\033[0m"
	cd /usr/game/cores/auth/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL1 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel1/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL2 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel2/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nGAME99 ACILIYOR ..\033[0m"
	cd /usr/game/cores/game99/
	./game &
	sleep 5
	clear
	echo
	echo -e "\033[32m \n KANAL1 VE KANAL2 ACILDI ..\033[0m"
	echo -e "\033[32m \n METIN2 AKTIF! ..\033[0m"
	echo
	
;;
3*)
	
	clear
	echo -e "\033[32m \nLOGLAR TEMIZLENIYOR ..\033[0m"
	cd /usr/game && sh temizle.sh
	sleep 2
	clear
	echo -e "\033[32m \nDB ACILIYOR ..\033[0m"
	cd /usr/game/cores/db/
	./db &
	sleep 5
	clear
	echo -e "\033[32m \nGIRISLER ACILIYOR ..\033[0m"
	cd /usr/game/cores/auth/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL1 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel1/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL2 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel2/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL3 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel3/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nGAME99 ACILIYOR ..\033[0m"
	cd /usr/game/cores/game99/
	./game &
	sleep 5
	clear
	echo
	echo -e "\033[32m \n KANAL1,KANAL2 VE KANAL3 ACILDI ..\033[0m"
	echo -e "\033[32m \n METIN2 AKTIF! ..\033[0m"
	echo
	
;;
4*)
	
	clear
	echo -e "\033[32m \nLOGLAR TEMIZLENIYOR ..\033[0m"
	cd /usr/game && sh temizle.sh
	sleep 2
	clear
	echo -e "\033[32m \nDB ACILIYOR ..\033[0m"
	cd /usr/game/cores/db/
	./db &
	sleep 5
	clear
	echo -e "\033[32m \nGIRISLER ACILIYOR ..\033[0m"
	cd /usr/game/cores/auth/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL1 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel1/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL2 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel2/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL3 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel3/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nKANAL4 ACILIYOR ..\033[0m"
	cd /usr/game/cores/channel4/
	./game &
	sleep 5
	clear
	echo -e "\033[32m \nGAME99 ACILIYOR ..\033[0m"
	cd /usr/game/cores/game99/
	./game &
	sleep 5
	clear
	echo
	echo -e "\033[32m \nKANAL1 - KANAL2 - KANAL3 - KANAL4 ACILDI ..\033[0m"
	echo -e "\033[32m \nMETIN2 AKTIF! ..\033[0m"
	echo
	
;;
esac
