#!/bin/bash
# AUTOR: PABLO SIERRA		VERSION: 1.0
#--------------------------------------------
# bfits.sh
#--------------------------------------------
#############################################
# Script que nos vacía un fichero y nos deja 
# constancia en el fichero syslog.
#############################################

# Help 

Help()
{
echo "FUNCIÓN: Script que nos vacía un fichero y nos deja constancia en el fichero syslog."
echo "OPCIONES: -h		Help "
echo "PARÁMETROS: [bfits.sh] <fichero> "
echo "CONDICIONES: Usuario: NONE"
}

while getopts ":h" option; do
	case $option in
		h)Help
		exit;;
	esac
done

# Main
## IF NO PARAM CORRECTOS
if [ $# -eq 0 ] || [ $# -gt 1 ]
then
	echo "ERROR: PARÁMETROS"
	exit 1
fi
## PROGRAMA
>$1
logger "Archivo " $1 " ha sido vaciado. FECHA: " $(date)
exit 0
