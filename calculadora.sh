echo "a) Inserta un numero"
read numero1 
echo "b) Inserta el segundo numero"
read numero2 

clear 

opcion=0

while [ $opcion -ne 6 ]; do

    echo 1. Suma
    echo 2. Resta
    echo 3. Multiplicacion
    echo 4. Division
    echo 5. Comparacion
    echo 6. Salir

    echo -n Eliga una Opcion:

    read opc

    case $opc in

        1) suma=`expr $numero1  + $numero2` 
        echo "Muy bien eligio la opcion 1 : Su suma es "$suma ;;

        2) resta=`expr $numero1  - $numero2`
        echo "Muy bien eligio la opcion 2 : Su resta es "$resta;;
        3) multiplicacion=`expr $numero1 \* $numero2`
        echo "Muy bien eligio la opcion 3 : Su multiplicacion es "$multiplicacion;;
        4) if (( $numero2 == 0 ))
            then echo error malo
            else division=`expr $numero1 / $numero2`
                echo "Muy bien eligio la opcion 4 : Su Divicion es " $division
            fi
            ;;
        5) if [ $numero1 -eq $numero2 ]
            then
                echo $numero1 y $numero2 son iguales
            fi
            if [ $numero1 -ne $numero2 ]
            then
                echo $numero1 y $numero2 no son iguales
            fi
            if [ $numero1 -gt $numero2 ]
            then
                echo $numero1 es mayor que $numero2
            fi
            if [ $numero1 -ge $numero2 ]
            then
                echo $numero1 es mayor o igual que $numero2
            fi
            if [ $numero1 -lt $numero2 ]
            then
                echo $numero1 es menor que $numero2
            fi
            if [ $numero1 -le $numero2 ]
            then
                echo $numero1 es menor o igual que $numero2
            fi
            ;;
        6) echo Adios 
			exit ;;
        *) echo Opcion no valida 
			opcion=0;;
    esac
    echo Pulse para continuar .....
	read p
	clear
    
done
