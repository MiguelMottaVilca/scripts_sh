#! /bin/bash

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



