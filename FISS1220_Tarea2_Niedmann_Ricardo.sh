#! /bin/bash

echo "Pregunta N°1"
file1=/etc/hostname
if [ -e $file1 ]
then
		if [ -r $file1 ]
		then
				echo "Tienes permiso para leer $file1"
		else
				echo "No tienes permiso para leer $file1"
		fi
else
		echo "$file1 no existe"
fi 
nombre=$(cat /etc/hostname)
if [ $nombre = 'niedmannfedora' ] #hostname no proporciona el nombre de usuario como whoami, pero es lo que se pidió en la instrucción de la tarea.
		then
				echo "Tu eres el usuario actual, $nombre"
		else
				echo "Tu no eres el usuario original, tu hostname es $nombre y este archivo fue escrito en niedmannfedora"
fi
#Fin de la Pregunta 1
echo "------------------------------------------------------"
 echo "Pregunta N°2"
 cont=1 #Se definen las variables del contador
 pi=4 #Se define pi = 4 para el valor 0 del contador
 while [ $cont -le 1000 ];do
		pi=$(echo "scale=13; $pi + (4 * (-1)^2$cont) / (2 * $cont + 1)" | bc)
				if [[ $cont = *0 ]] && [[ $cont -lt 99 ]];then
						echo "pi es $pi con $cont iteraciones"
						elif [[ $cont = *00 ]] && [[ $cont -lt 999 ]];then
								if [[ $cont = 100 ]];then
								p100=$pi
								fi
							echo "pi es $pi con $cont iteraciones"
						elif [ $cont = 1000 ];then
								echo "pi es $pi con $cont iteraciones"
								pi1000=$pi
				fi
				((cont=$cont+1))
done
pireal=3.1415926535897
error1=$(echo "scale=13; (($p100-$pireal) / $pireal) * 100" | bc)
error2=$(echo "scale=13; 100*(($pi1000-$pireal) / $pireal)" | bc)
echo "------------------------------------------------------"
echo " El error porcentual despues de 100 iteraciones es 0$error1 %"
echo " El error porcentual despues de 1000 iteraciones es 0$error2 %"
echo "------------------------------------------------------"
echo "Pregunta 3"
a=$1
n=$(date +%d)
m=$(date +%B)
if [ $a -gt 31 ];then
				echo "Revisar error en el archivo Error.log"
				echo "Ingresaste el número $a" > Error.log
				echo "Ingresa un número válido: Entre el 1 y el 31" >> Error.log
				break
		elif [ $a = $n ];then
				echo "Los números coinciden"
				echo "Hoy es $a de $m"

		elif [ $a -lt $n ];then
				echo "El número $a es menor al número $n"
				echo "Han pasado $(($n - $a)) dias desde el $a de $m"
		elif [ $a -gt $n ];then
				echo "El número $a es mayor al número $n"
				echo "Faltan $(($a - $n)) dias para el $a de $m"
				fi
#Fin pregunta 3
echo "------------------------------------------------------"
#Pregunta 4

echo "Pregunta 4"
echo "Ciclo While"
sum=100
a=0
b=0
	while (( sum > a ))
	 do
      ((a=$a+1))
      ((b=$a+$b))
				if [ $b -gt 1000 ]
				then
						echo "n > $a"
						echo "La suma es $b"
						break
		fi
	done

#cilclo en for
echo "Ciclo For"
n=0
for i in $(seq 1 1 60)
	do
	((n= $n + $i ))
	if [ $n -gt 1000 ]	
		then
			echo "n > $i"
			echo "La suma es $n"
			break
	fi	
done
#Fin 
