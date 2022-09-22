#! /bin/bash

# Pregunta N°1
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
fi # hasta aqui todo correcto
nombre=$(cat /etc/hostname)
# Combinar los dos ciclos if
if [ $nombre = 'niedmannedora' ]
		then
				echo "Tu eres el usuario actual, $nombre"
		else
				echo "Este archivo fue escrito en $nombre"
fi
#Fin de la Pregunta 1

#Pregunta 2
# # partir con la variable igual a 0
# la idea es dejar un loop donde por defecto vaya revisando si el numero
# es par o impar ysumar o restar la fraccion correspondiente al numero n
#Usar el mismo loop con 100 y con 1000
 echo "10 iteraciones"
 cont=1
 pi=4
 echo "$pi"
 while [ $cont -le 1000 ]
			do
				pi=$(echo "scale=20; $pi + (4 * (-1)^2$cont) / (2 * $cont + 1)" | bc)
				if [ $cont = 10 ]
 						then
								echo "pi es $pi con 10 iteraciones"
				fi

				if [ $cont = 100 ]
 						then
								echo "pi es $pi con 100 iteraciones"
				fi

				if [ $cont = 1000 ]
 						then
								echo "pi es $pi con 1000 iteraciones"
				fi

				((cont=$cont+1))
 		done
# 		if [ $var -eq  1]

# Pregunta 3
n=0
# while [ $n -le 15 ]
# 		do
# 				n=$(exp $n + 1)
# 				m =$(exp 4 - 4/ 2*$n-1)
# 				if [ $n -eq 15 ]
# 				then
# 						echo "$m"
# 						echo "$n"
# 				else
# 						continue
# 				fi
# 		done
# echo "hola"

##Ej 4 primera forma
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

#usar form

