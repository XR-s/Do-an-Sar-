#!/bin/sh
clear
echo
echo -e "\033[32mMETIN2! \033[0m"
echo
echo -e "\033[32mHANGI KANALI KAPATMAK ISTIYORSUN? \033[0m"
echo
echo -e "\033[32m 
1 - KANAL1 \n 
2 - KANAL2 \n 
3 - KANAL3 \n 
4 - KANAL4 \n 
5 - TUM KANALLAR \033[0m"
echo
read chs

case $chs in 
1*) 
	
	clear
	echo -e "\033[32m \nKANAL1 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel1/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL1 KAPATILDI ..\033[0m"
	echo
	
;;
2*) 
	
	clear
	echo -e "\033[32m \nKANAL2 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel2/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL2 KAPATILDI ..\033[0m"
	echo
	
;;
3*) 
	
	clear
	echo -e "\033[32m \nKANAL3 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel3/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL3 KAPATILDI ..\033[0m"
	echo
	
;;
4*) 
	
	clear
	echo -e "\033[32m \nKANAL4 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel4/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL4 KAPATILDI ..\033[0m"
	echo
	
;;
5*) 
	
	clear
	echo -e "\033[32m \nKANAL1 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel1/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL2 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel2/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL3 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel3/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nKANAL4 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/channel4/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nGAME99 KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/game99/
	./shut.sh &
	sleep 2
	echo -e "\033[32m \nAUTH KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/auth/
	./shut.sh &
	sleep 2	
	echo
	echo -e "\033[32mDB KAPATILIYOR ..\033[0m"
	cd /usr/game/cores/db/
	./shut.sh &
	sleep 2
	echo
	echo -e "\033[32m \nMETIN2 \033[0m"
	echo -e "\033[32m \nDB-AUTH VE TUM KANALLAR KAPATILDI \033[0m"
	echo
	
;;
esac