#!/bin/bash
# AUTOR: PABLO SIERRA		VERSION: 1.0
#--------------------------------------------
# quan.sh
#--------------------------------------------
#############################################
# Script que nos reciba por parámetro una serie de paquetes
# y dice cuándo se instalaron o nos
# diga que no está instalado.
#############################################

# Help 

Help()
{
echo "FUNCIÓN: Script que nos reciba por parámetro una serie de paquetes y dice cuándo se instalaron o nos diga que no está instalado."
echo "OPCIONES: -h		Help "
echo "PARÁMETROS: [paquets.sh] <paquete> <paquete>... "
echo "CONDICIONES: Usuario: NONE "
}

while getopts ":h" option; do
	case $option in
		h)Help
		exit;;
	esac
done

# Main
if [ $# -eq 0 ]
then
	echo "ERROR: FALTAN PARÁMETROS"
	exit 1
fi
for paquete in "$@"
do
	grep " install " /var/log/dpkg.log.1 | grep -q " $paquete"

	if [ $? -ne 0 ]
	then
		echo "$paquete NO INSTALADO"
	else
		res=$(grep " install " /var/log/dpkg.log.1 | grep " $paquete" | awk '{print $1 $2}')
	
		echo "$paquete INSTALADO, FECHA: $res"
	fi
done
exit 0
