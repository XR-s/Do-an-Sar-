#!/bin/sh
clear
cd /usr/game/cores/db && sh clear_logs.sh
cd /usr/game/cores/auth && sh clear_logs.sh
cd /usr/game/cores/channel1 && sh clear_logs.sh
cd /usr/game/cores/channel2 && sh clear_logs.sh
cd /usr/game/cores/channel3 && sh clear_logs.sh
cd /usr/game/cores/channel4 && sh clear_logs.sh
cd /usr/game/cores/game99 && sh clear_logs.sh
cd /usr/game/share/log/channel1 && rm -rf *
cd /usr/game/share/log/channel2 && rm -rf *
cd /usr/game/share/log/channel3 && rm -rf *
cd /usr/game/share/log/channel4 && rm -rf *
cd /usr/game/share/log/game99 && rm -rf *
cd /usr/game/share/log/auth && rm -rf *
cd /usr/game/share/log/db && rm -rf *
cd /var/db/mysql && rm -rf *.err *.pid *.core *.dll *.log ibdata1 ib_logfile0 ib_logfile1 ib_logfile2 ib_logfile3 ib_logfile4 ib_logfile5 ib_logfile6 ib_logfile7 
cd /var/db/mysql && rm -rf mysql-bin.index mysql-bin.000000 mysql-bin.000001 mysql-bin.000002 mysql-bin.000003 mysql-bin.000004 mysql-bin.000005 mysql-bin.000006 
cd /var/db/mysql && rm -rf mysql-bin.000011 mysql-bin.000012 mysql-bin.000013 mysql-bin.000014 mysql-bin.000015 mysql-bin.000016 mysql-bin.000017 mysql-bin.000018 
cd /var/db/mysql && rm -rf mysql-bin.000023 mysql-bin.000024 mysql-bin.000025 mysql-bin.000026 mysql-bin.000027 mysql-bin.000028 mysql-bin.000029 mysql-bin.000030 
cd /var/db/mysql && rm -rf mysql-bin.000034 ib_logfile10 ib_logfile11 ib_logfile12 mysql-bin.000008 mysql-bin.000009 mysql-bin.000010 mysql-bin.000020 mysql-bin.000021 
cd /var/db/mysql && rm -rf mysql-bin.000032 mysql-bin.000033 mysql-bin.000031 mysql-bin.000022 mysql-bin.000019 mysql-bin.000007 ib_logfile8 ib_logfile9
cd /var/db/mysql/account && rm -rf *.TMD
cd /var/db/mysql/common && rm -rf *.TMD
cd /var/db/mysql/hotbackup && rm -rf *.TMD
cd /var/db/mysql/log && rm -rf *.TMD
cd /var/db/mysql/mysql && rm -rf *.TMD
cd /var/db/mysql/player && rm -rf *.TMD
cd /var/db/mysql/performance_schema && rm -rf *.TMD
wait
clear
echo
echo -e "\033[32mMETIN2 \033[0m"
echo
echo -e "\033[32mLOGLAR TEMIZLENDI. \033[0m"
echo