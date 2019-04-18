#!/bin/bash
# @plase not recode script me ;) *\\
# @toolsname  : ytsubs
# @create on  : 19-04-2019
# @powered by : zsecc0de-crew.id *\\
#                        ____     _                                         _
# _______  ___  ___ ___ / _ \  __| | ___        ___ _ __ _____      _(_) __| |
#|_  / __|/ _ \/ __/ __| | | |/ _` |/ _ \_____ / __| '__/ _ \ \ /\ / / |/ _` |
# / /\__ \  __/ (_| (__| |_| | (_| |  __/_____| (__| | |  __/\ V  V /| | (_| |
#/___|___/\___|\___\___|\___/ \__,_|\___|      \___|_|  \___| \_/\_(_)_|\__,_|
clear;
command -v curl > /dev/null 2>&1 || { echo >&2 "cURL not installed [!]"; }
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)
function cek_ () {
	            echo -e "${CYAN}[+] ${NORMAL}STATUS : $ez1"
                echo -e "${CYAN}[+] ${NORMAL}NAME : $ez2"
                echo -e "${CYAN}[+] ${NORMAL}JUMLAH SUBSCRIBE : $ez3"
} 
function menu_ () {
echo -e "
\t${RED}[-] ${NORMAL}YT-SUBS ~ CREATE BY WIDHISEC 
"
}
menu_
function data_ () {
	            ez1=$(curl --silent "https://api.subcount.app/channel/list/$users" -H 'Accept: application/json, text/plain, */*' -H 'Referer: https://subscribercounter.com/channel/UCWi9R1_wBEKp0NZ2aTlgYAA' -H 'Origin: https://subscribercounter.com' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36' -H 'Authorization: Basic eXRzYzpiZWk2emVleGFlMGFlaGFlMkhlZXcyZWVt' --compressed|
                grep -oP '(?<="success":)[^,]*')
	            ez2=$(curl --silent "https://api.subcount.app/channel/list/$users" -H 'Accept: application/json, text/plain, */*' -H 'Referer: https://subscribercounter.com/channel/UCWi9R1_wBEKp0NZ2aTlgYAA' -H 'Origin: https://subscribercounter.com' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36' -H 'Authorization: Basic eXRzYzpiZWk2emVleGFlMGFlaGFlMkhlZXcyZWVt' --compressed|
                grep -Po '(?<="name":)[^,]*' | tr -d '}]}""')
                ez3=$(curl --silent "https://api.subcount.app/channel/list/$users" -H 'Accept: application/json, text/plain, */*' -H 'Referer: https://subscribercounter.com/channel/UCWi9R1_wBEKp0NZ2aTlgYAA' -H 'Origin: https://subscribercounter.com' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36' -H 'Authorization: Basic eXRzYzpiZWk2emVleGFlMGFlaGFlMkhlZXcyZWVt' --compressed|
                grep -Po '(?<="count":)[^,]*' | tr -d '}]}""')
                cek_;}
echo -n "${GREEN}[?]${NORMAL}masukkan id youtube :"; read users
data_ $users
