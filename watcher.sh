#!/bin/bash
###############################################
#     --The Watcher "Botnet Bouncer"--        #
#          #FIREWALL ASSISTANT                #
#        --Simple Bash Training--             #
#---------------------------------------------#
# Creator : Cedric H.                         #
# Version : 1.0                               #
# Last update : 12/05/2022                    #
###############################################
#Colors
red="\e[1;31m"
red2="\e[1;33;1;41m"
white="\e[1;37m"
blue="\e[34m"
green="\e[1;32m"
yellow="\e[1;33m"
ppl="\e[1;35m"
qst="\e[1;31;1;41m"
line="\e[1;37;1;40m"
endcol="\e[0m"

clear
        if [[ "$EUID" -ne 0 ]]; then
            echo -e "$red2 Sorry, you need to run this script as root. $endcol"
            exit 1
        fi
            check_pkg=$(dpkg -s ufw | head -n 1 )

            if [[ "$check_pkg" =~ "Package: ufw" ]]
                then
                clear
                echo "####################################################################################"
                else
                while true
                    do
                    printf "$red2 This script need UFW to run.$endcol$yellow\n"
                    printf "Would you like to install it ?"
                    echo "(Type : [Y] for Yes [N] for No)$endcol"
                    read OoN
                    if [[ "$OoN" =~ ^[y|Y]$ ]]
                        then
                        sudo apt update && sudo apt install ufw -y
                        sudo systemctl enable ufw
                        ufw enable
                        break

                        else
                        exit 0
                    fi
                done
            fi
            #Remove Cursor
            function cleanup() {
                tput cnorm
            }
trap cleanup EXIT

clear
echo -e "\n\n\n\n$red Code by Cedric H. $endcol "

for i in 𝕯 𝖗. 𝕸 𝖆 𝖈 𝖍 𝖎 𝖓 𝖊
do
    echo -e "$red$i$endcol\c"
    sleep 0.125
done
sleep 0.25
clear
printf "$red⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
$red    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⠀⠈⣀⢊⡜⠄⡇⠀⡐⠀⢀⠀⠀⠀⠀⠀⠀⠀  __    __      _       _        
$red    ⠀⠀⠀⠀⠀⠀⠀⠈⢆⢀⢣⣠⢣$encol$green⡟⢻⣌$endcol$red⢴⡴⡀⡠⠃⠀⡀⠀⠀⠀⠀⠀ / / /\ \ \__ _| |_ ___| |__   ___ _ __ 
$red   ⠀⠀⠀ ⠀⢄⠀⠈⠢⡢⣳⡿$encol$green⣡⡟⠀⠀⠹⣎$endcol$red⢻⣝⣕⡴⠊⠀⡀⠀⠀⠀⠀ \ \/  \/ / _  | __/ __| '_ \ / _ \ '__|
$red       ⢀⡀⠈⢓⣿⣾⡟$encol$green⣱⠏⠀⠀⠀⠀⠹⣦$endcol$red⢻⣿⣮⣒⠁⠀⡀⠀⠀⠀  \  /\  / (_| | || (__| | | |  __/ |  
$red    ⠀⠀⠀⠀⠀⠩⢷⣿⡟$encol$green⣼⣯⣴⣞⣛⣙⣓⡦⣜⣧$endcol$red⡹⣿⡶⠍⠁⠀⠀⠀⠀   \/  \/ \__,_|\__\___|_| |_|\___|_| 
$red    ⠀⠀⠀⠀⠀⢉⣽⢏$encol$green⣼⣿⡛⠉⣇⢿⡿⢸⠋⢙⣿⢷$endcol$red⡹⣯⣉⠁⠀⠀⠀⠀          FIREWALL ASSISTANT 
$red    ⠀⠀⠀⠀⠀⣐⢎$encol$green⡾⠃⠈⠙⠷⣮⣵⣾⣥⠶⠛⠁⠈⢷⡜$endcol$red⣆⠀⠈⠁⠀⠀               Botnet Bouncer
$red    ⠀⠀⠀⠈⢡⢣$encol$green⣾⣁⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣈⣿⣌$endcol$red⠌⠁⠀⠀⠀                   V1.0
$red    ⠀⠀⠀⠀⠓⠒⢒⠖⠖⡶⣶⣶⣿⣷⣷⣷⣾⣿⢷⡲⠲⣖⠚⠚⠂⠀⠀⠀
$red    ⠀⠀⠀⠀⠀⠀⠁⢀⠜⠈⡼⠘⡏⡟⡟⢸⠡⢳⠁⠑⡄⠀⠑⠀⠀⠀⠀⠀
$red    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⢠⠃⠀⡇⠀⡇⠀⢡⠀⠈⠀⠀⠀
$endcol"
sleep 2
clear
#Clear the cursor
tput civis
while true
do
    nbr_online=$(who | awk '{ print $1 }' | wc -l)
    tput cup 1 0
        if [[ $nbr_online -gt "1" ]]
        then
        echo -e "$red$nbr_online Users online :   "
        else
        echo -e "$red$nbr_online User online :    "
        fi
    printf "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀$endcol$white \n"
    function wuwu {
    #users online
    m=1
    until [ $m -gt $nbr_online ]
        do
        #Select user
        wuis=$(who | awk 'NR=='$m'' | awk '{print $1}' )
        user_by=$(who | awk '{ print $1 }' | awk 'NR=='$m'')
        user_id=$(lslogins -u | grep $wuis | awk '{print $1}' )
        if [[ $user_id -gt "1000" ]]
            then
            echo -e "$green$user_by \c$encol"
            else
            echo -e "$red$user_by \c$endcol"
        fi
        (( m=m+1 ))
    done
    }
    wuwu

    printf "\n$red▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀$endcol$white \n"
    tput cup 6 0 
    printf "$red Last SSH Connexions \n"
    printf "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀$endcol$white \n"
    last -a | head -n 5
    tput cup 14 0
    printf "$red▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀$endcol$white \n"
    tput cup 15 0 
    printf "$red SSH LOGIN ATTEMPT : \n"
    tput cup 16 0
    printf "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀$endcol \n"
    tput cup 17 0
    #Check format IPV4
    regex_ipv4="(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
    #Check format IPV6 
    #regex_ipv6="(?<![:.\w])(?:[A-F0-9]{1,4}:){7}[A-F0-9]{1,4}(?![:.\w])"
    #catch IP and record 
    record=$(sudo cat /var/log/auth.log | tail -n 10 | grep ssh | awk '{ print $3,$5,$6,$7,$8,$9,$10,$12,$13,$14,$15,$16 }' | grep "'$regex_ipv4'\|Invalid\ user" >> watcher_record_ip )
    #authentication failure
    record2=$(sudo cat /var/log/auth.log | tail -n 10 | grep ssh | awk '{ print $3,$5,$6,$7,$8,$9,$10,$12,$13,$14,$15,$16 }' | grep "'$regex_ipv4'\authentication\ failure" >> watcher_record_ip )
    tput cup 17 0
    #Show logs for invalid users trying to login  
    logz=$(sudo cat /var/log/auth.log | tail -n 20 | grep ssh | awk '{ print $1,$2,$3,$5,$6,$7,$8,$9,$10,$12,$13,$14,$15,$16  }' | grep "Invalid\| user")
    echo "$logz"
    tput cup 29 0
    echo -e "$red▄ $endcol= Banned  $green▄ $endcol= Monitored"
    tput cup 30 0
    printf "$red--------------------------------------------------------------------------------------------------------------------------------$endcol$white \n"

    #BotnetBouncer
    function banban {
    #start @ Line 1
    m=1
    #Check numbers of lines
    nbr_lines=$(cat watcher_record_ip | wc -l)
    #tput sc record the position of cursor
    tput sc

        until [ $m -gt $nbr_lines ]
            do
                ip=$(cat watcher_record_ip | awk 'NR=='$m'' | grep -o -E "$regex_ipv4")
                nbr_attempt_by_ip=$(cat watcher_record_ip | grep -o "$ip" | wc -l)
                nbr_attempt="4"
                    if [[ $m -ge "1140" ]]
                    then
                    sudo sed -i '1d;127d' watcher_record_ip
                    fi
                    if [[ $m -eq "127" ]] || [[ $m -eq "254" ]] || [[ $m -eq "381" ]] || [[ $m -eq "508" ]] || [[ $m -eq "635" ]] || [[ $m -eq "889" ]] || [[ $m -eq "1016" ]]
                    then
                    echo -e "\n"
                    fi
                        if [[ $nbr_attempt_by_ip -gt $nbr_attempt ]]
                            then
                            echo -e "$red▄\c"                    
                            d="d"
                            ip_ban=$( echo -e "$ip <br />" >> banban )
                            var_banban=$(cat banban)
                            regex_ipv4="(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
                            html=$( cat banban | sort | uniq >> /var/www/html/Wall_of_the_shame.html )
                            #add new rule to firewall
                            sudo ufw deny from $ip to any &>/dev/null
                            echo -e "\c $endcol"
                            else
                            echo -e "$green▀\c$endcol"
                        fi

                    (( m=m+1 ))
            done
    #tput rc go to recorded position
    tput rc
    }
    tput cup 32 0

    banban

    tput cup 36 0
    printf "$endcol"
    tput cup 40 0
sleep 30
clear
done
