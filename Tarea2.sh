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
if [ $nombre = 'niedmannedora' ]
		then
				echo "Tu eres el usuario actual, $nombre"
		else
				echo "Este archivo fue escrito en $nombre"
fi
#Fin de la Pregunta 1

#Pregunta 2
# # partir con la variable igual a 0
# sumar uno altiro y empezar a comparar, con el 10,9,8,7,6,5,4,3,2,1
# la idea es dejar un loop donde por defecto vaya revisando si el numero
# es par o impar ysumar o restar la fraccion correspondiente al numero n
#Usar el mismo loop con 100 y con 1000
# echo "10 iteraciones"
# var=1
# pi=0
# while [ $var -le 10 ]
# 		do
# 		if [ $var -eq  1]

# Pregunta 3
n=0
while [ $n -le 15 ]
		do
				n=$(exp $n + 1)
				m =$(exp 4 - 4/ 2*$n-1)
				if [ $n -eq 15 ]
				then
						echo "$m"
						echo "$n"
				else
						continue
				fi
		done
echo "hola"
