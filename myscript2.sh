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

trap ctrl_c INT

function ctrl_c(){
  echo -e "\n${redColour}[!] Saliendo .... \n"${endColour}
  exit 1
}

function helpPanel(){
  echo -e "\n${redColour} Estas en el menu de ayuda ${endColour}"
}

while getopts "e:h:" arg;
do
  case $arg in
    e) exploration_mode=$OPTARG;;
    h) helpPanel;;
  esac
done

echo "Introduce tu nombre : "
read nombre
echo "Tu nombre es ${nombre}"
if [ -z "${nombre}" ]
then 
  echo "no ingresaste tu nombre"
fi

read -p "Introduce tu apellido : " apellido
echo "Tu apellido es ${apellido}"

read -t 5 -p "Introduce tu edad : " edad
if [ -z "${edad}" ]
then 
  echo "no ingresaste tu edad rapido"
else 
  echo "tu edad es  ${edad}"
fi

read -sp "Introduce una contraseña " password 
echo 
echo "tu contrase es ${password}"



