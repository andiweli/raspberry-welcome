#!/bin/bash

# beauty ssh welcome message
# original by reloxx13/reloxx13.github.io
# modified by andiweli
# required: sudo apt-get install update-notifier-common

export TERM=xterm-256color

CPUTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
CPUTemp1=$(($CPUTemp0/1000))
CPUTemp2=$(($CPUTemp0/100))
CPUTempM=$(($CPUTemp2 % $CPUTemp1))

# Basic info
Hostname=`uname -n`
Root1=`df -hBM / | awk '/\// {print $(NF-3)"B"}'`
Root2=`df -hBM / | awk '/\// {print $(NF-4)"B"}'`

# System load
Memory1=`free -t -m | grep Total | awk '{print $3"MB";}'`
Memory2=`free -t -m | grep "Mem" | awk '{print $2"MB";}'`

# UpTime calculator
upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
secs=$((${upSeconds}%60))
mins=$((${upSeconds}/60%60))
hours=$((${upSeconds}/3600%24))
days=$((${upSeconds}/86400))
UpTime=`printf "%d Tage, %02d:%02d:%02dh" "$days" "$hours" "$mins" "$secs"`

# IP adresses
IP=`ip route get 8.8.8.8 | sed -n '/src/{s/.*src *\([^ ]*\).*/\1/p;q}'`

# Model
Model=`cat /sys/firmware/devicetree/base/model`

echo "
$(tput setaf 25)Nextcloud$(tput setaf 33)Pi
$(tput setaf 15)
  > Hostname ..... $Hostname
  > IP-Address ... $IP
  > Uptime ....... $UpTime
  > CPU-Temp ..... $CPUTemp1.$CPUTempM°C
  > Disk Usage ... $Root1 / $Root2
  > Memory ....... $Memory1 / $Memory2
$(tput setaf 245)
$Model
`uname -srmo`
`date +"%A, %e %B %Y, %H:%M:%S"`
$(tput sgr0)"


