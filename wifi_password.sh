#! /bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

wifis=$(nmcli device wifi list )

echo "$wifis"

wifi_name="" #ssdi
pass="" # password

echo -e "\n${grayColour}[!] Intentado conectar a $wifi_name \n${endColour}"

echo -e "Cargando ...\n"
echo -e " 1 de 12912912\n"

connect=$(nmcli device wifi connect $wifi_name password $pass)
echo "$?"

if [ $? = 2]
then
  echo -e "${redColour}[!] Se produjo un error${endColour}"
else
  echo -e "[!] Conectado con exito"
  echo -e "${yellowColour}Password : $pass${endColour}"
fi


echo "$?"
#bar="comandos.txt"
#exec=$(cat $bar)
#echo "$exec"

