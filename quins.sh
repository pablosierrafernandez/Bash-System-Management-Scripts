#!/bin/bash
# AUTOR: PABLO SIERRA		VERSION: 1.0
#--------------------------------------------
# quins.sh
#--------------------------------------------
#############################################
# Script que nos informa de los paquetes
# instalados en una fecha determinada.
#############################################

# Help 

Help()
{
echo "FUNCIÓN: Script que nos informa de los paquetes instalados en una fecha determinada."
echo "OPCIONES: -h		Help "
echo "PARÁMETROS: [quins.sh] <fecha> "
echo "CONDICIONES: Formato de fecha -> 'aaaa-mm-dd hh:mm:ss'  "
echo "Usuario: NONE"
}

while getopts ":h" option; do
	case $option in
		h)Help
		exit;;
	esac
done

# Main
## IF NO PARAM
if [ $# -eq 0 ] || [ $# -gt 1 ]
then
	echo "ERROR: PARÁMETROS"
	exit 1
fi
## PROGRAMA
grep " install " /var/log/dpkg.log.1 | grep "$1" | awk '{print $4}'| awk -F[:] '{print "PAQUETE: "$1}'
echo "FECHA: " $1
exit 0

