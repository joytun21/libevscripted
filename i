#!/bin/bash

# Color Type 9
CY="\e[96;1m" # Cyan
CyanBee="\e[5;36m" # BlueCyan
GreenBe="\e[5;32m" # Green / hijau
WhiteBe="\e[5;37m" # White / Putih
Green="\e[92;1m"
GREEN="\e[92;1m"
RED="\e[91;1m"
# Color type 38
LO='\e[38;5;162m'
UK='\e[38;5;99m'  # UNGU KOLOT
BK='\e[38;5;196m' # BEREM KOLOT 
R1='\e[38;5;155m' # HEJO SEMU BODAS
R2='\e[38;5;49m'  # HEJO LIME / APEL
BC='\e[38;5;195m' # BODAS CERAH PISAN
HU='\e[38;5;115m' # HEJO SEMU ABU
UB='\e[38;5;147m' # UNGU KABODASAN
KT='\e[38;5;187m' # KONENG TARIGU
Suffix='\e[0m'

# . Liner L1
function L1() {
  echo -e "${UK}┌──────────────────────────────────────────┐ ${Suffix} "
}


# . Liner L2
function L2() {
  echo -e "${UK}└──────────────────────────────────────────┘ ${Suffix}"
}


# . Liner Horizontal
function Horizontal(){
  echo -e "${UK}———————————————————————————————————————————      ${Suffix}"
}

  
  # // Lunatic Backend Banner
function Lunatic_Banner() {
clear
L1
echo -e "${CyanBee}               JOY TUNNELING                  ${Suffix}"
L2
}

  # // Thanks To   Joy Tunneling
function Sc_Credit(){
sleep 2
L1
echo -e "${CyanBee}       Terimakasih Telah Menggunakan-      ${Suffix}"
echo -e "${CyanBee}                Script Credit              ${Suffix}"
echo -e "${CyanBee}                Joy Tunneling            ${Suffix}"
L2
read -p "[Enter] Back Menu "
menu
}

function ENVIRONMENT() {
L1
 echo -e "${R2}           ---[ UPDATE SUCCES ]---             ${Suffix}"
L2
}

# // Submit Loading : sleep 3 & loading $!
function loading() {
clear
echo
echo
echo
  local pid=$1
  local delay=0.1
  local spin='-\|/'

  while ps -p $pid > /dev/null; do
    local temp=${spin#?}
    printf "[%c] " "$spin"
    local spin=$temp${spin%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done

  printf "    \b\b\b\b"
}

function Format_Just_Input() {
Lunatic_Banner
L1
echo ""
echo -e "${GreenBe} Just Input a number ${Suffix}"
echo -e "${WhiteBe} Format Number in day${Suffix}"
echo -e ""
echo -e "${CyanBee} 1 = 1 day ${Suffix}"
echo -e "${CyanBee} 2 = 2 day ${Suffix}"
echo ""
L2
echo ""
}

######################################
MYIP=$(curl -sS ipv4.icanhazip.com)
######################################
IPVPS=$(curl -s ipv4.icanhazip.com)
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
echo ""
clear
cd /usr/local/
rm -rf sbin
rm -rf /usr/bin/enc
cd
mkdir /usr/local/sbin
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    wget https://raw.githubusercontent.com/joytun21/libevscripted/main/Cdy/FT
    wget -q -O /usr/bin/enc "https://raw.githubusercontent.com/joytun21/libevscripted/main/Enc/encrypt" ; chmod +x /usr/bin/enc
    7z e -paskykenza123 FT
    unzip FT
    chmod +x menu/*
    enc menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu
    rm -rf FT
    rm -rf update
}
netfilter-persistent


clear
ENVIRONMENT
echo -e ""
fun_bar 'res1'
L2
Sc_Credit
