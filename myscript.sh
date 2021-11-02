#! /bin/bash

# -d    directorio 
# -f    archivo
# -z    vacio

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo Hello World!;
echo -e "\n${redColour}[!] Saliendo...\n${endColour}"
echo -e "\n${grayColour} Instalando...\n${endColour}"

#mensaje=Hola   Care !!!

if [ "$1" = "hola" ]
then 
  echo "Hola Miguel"
elif [ "$1" = "chau" ]
then 
  echo "Cuidate"
elif [ ! -z "$1" ]
then 
  echo "Variable no valida"
else 
  echo "Falta variable"
fi
###############################################################

case $2 in 
  rojo)
    echo "marte"
    ;;
  azul)
    echo "tierra"
    ;;
  *)
    echo "i dont know"
    ;;
esac

###############################################################
# loop while
i=0
while [ $i -lt 5 ]
do 
  echo "it's fine"
  ((i++))
done

#loop for 
for i in {1..5}  # 1..x    x..1    
do
  echo "it's ok"  # continue break
done

for x in Hello world !!
do
  echo $x
done
###############################################################
function saludo(){
  var="$1"
  echo "Hola ${var}"
}

saludo Miguel
###############################################################


