#!/bin/bash

# Default the TZ environment variable to UTC.
TZ=${TZ:-UTC}
export TZ

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Switch to the container's working directory
cd /home/container || exit 1

# Print Java version
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0mjava -version\n"
java -version
echo "welcome"
echo "made by aquiline nodes"
echo "for java type 1 for bedrock type 2"
read TYPE2
export TYPE2
if [ $TYPE2 -eq 1 ]; then
echo "choose ur type"
echo "1-paper"
echo "2-purpur"
echo "3-vanilla"
echo "4-bungeecord"
read TYPE
export TYPE
case $TYPE in
   1)
   echo "u choose paper"
   PROJECT = paper
   echo "$PROJECT being installed"
   ;;
   2) 
   echo "u choose pupur"
PROJECT = purpur
  echo "$PROJECT being installed"
   ;;
   3)
   echo "u choose vanilla"
   PROJECT = vanilla
     echo "$PROJECT being installed"
   ;;
   4)
   echo "u choose bungeecord"
   PROJECT = bungeecord
     echo "$PROJECT being installed"
   ;;
   esac
else
echo "bedrock being installed"
fi