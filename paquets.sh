#!/bin/bash
# AUTOR: PABLO SIERRA		VERSION: 1.0
#--------------------------------------------
# paquets.sh
#--------------------------------------------
#############################################
# Script que nos informa en que versión estan
# los paquetes instalados.
#############################################

# Help 

Help()
{
echo "FUNCIÓN: Informa en que versión están los paquetes instalados"
echo "OPCIONES: NONE "
echo "PARÁMETROS: NONE "
echo "CONDICIONES: Usuario: NONE "
}

while getopts ":h" option; do
	case $option in
		h)Help
		exit;;
	esac
done

# Main

apt list | awk -F "/| " '{print "PROGRAM: " $1" VERSION: " $3}'
exit 0
