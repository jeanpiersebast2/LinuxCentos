#!/bin/bash 


clear 

opcion=0

while [ $opcion -ne 6 ]; do
	echo 1. Desea saber donde vive actualmente 
	echo 2. Desea saber cual es su animal favorito
	echo 3. Desea saber en que medio de transporte va Usted
	echo 4. Desea saber que fruta le gusta
	echo 5. Desea saber color favorito
	echo 6. Salir
	
	echo -n Eliga una Opcion:
	read opcion 
	
	case $opcion in 
		1) echo Muy bien eligio la Opcion 1: Usted vive en Peru ;;
		2) echo Muy bien eligio la Opcion 2: Su animal favorito es un loro ;;
		3) echo Muy bien eligio la Opcion 3: usted utiliza como medio de transporte normalmete un taxi ;;
		4) echo Muy bien eligio la Opcion 4: Su fruta favorita es la chirimoya ;;
		5) echo Muy bien eligio la Opcion 5: su color favorito es el rojo ;;
		6) echo Adios 
			exit ;;
		*) echo Opcion no valida 
			opcion=0;;
	esac
	echo Pulse para continuar .....
	read p
	clear
done 
