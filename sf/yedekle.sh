clear
echo
echo -e "\033[32mMETIN2! \033[0m"
echo
echo -e "\033[32m
ISLEMINIZ GERCEKLESTIRILIYOR. \n
LUTFEN BEKLEYINIZ. \033[0m"
echo
cd /usr/game
sh temizle.sh
wait
cd /usr
rm -rf metin2game.tar.gz
wait
tar cvzf metin2game.tar.gz game
wait
cd /var/db
rm -rf metin2mysql.tar.gz
wait
tar cvzf metin2mysql.tar.gz mysql
wait
clear
echo
echo -e "\033[32mMETIN2! \033[0m"
echo -e "\033[32m
ISLEM BASARILI. \n
LOGLAR TEMIZLENDI YEDEKLER ALINDI! \033[0m"
echo
