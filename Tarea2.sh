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
fi # hasta aqui todo correcto
nombre=$(cat /etc/hostname)
# Combinar los dos ciclos if
if [ $nombre = 'niedmannfedora' ]
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
 m=1
 while [ $cont -le 1000 ]
			do
				pi=$(echo "scale=8; $pi + (4 * (-1)^2$cont) / (2 * $cont + 1)" | bc)
				if [ $cont = 10 ]
 						then
								echo "pi es $pi con 10 iteraciones"
						elif [ $cont = 20 ]
						then
								echo "pi es $pi con 20 iteraciones"
						elif [ $cont = 30 ]
						then
								echo "pi es $pi con 30 iteraciones"
						elif [ $cont = 40 ]
						then
								echo "pi es $pi con 40 iteraciones"
						elif [ $cont = 50 ]
						then
								echo "pi es $pi con 50 iteraciones"
						elif [ $cont = 60 ]
						then
								echo "pi es $pi con 60 iteraciones"
						elif [ $cont = 70 ]
						then
								echo "pi es $pi con 70 iteraciones"
						elif [ $cont = 80 ]
						then
								echo "pi es $pi con 80 iteraciones"
						elif [ $cont = 90 ]
						then
								echo "pi es $pi con 90 iteraciones"
						elif [ $cont = 100 ]
 						then
								echo "pi es $pi con 100 iteraciones"
								p100=$pi
						elif [ $cont = 200 ]
 						then
								echo "pi es $pi con 200 iteraciones"
						elif [ $cont = 300 ]
 						then
								echo "pi es $pi con 300 iteraciones"
						elif [ $cont = 400 ]
 						then
								echo "pi es $pi con 400 iteraciones"
						elif [ $cont = 500 ]
 						then
								echo "pi es $pi con 500 iteraciones"
						elif [ $cont = 600 ]
 						then
								echo "pi es $pi con 600 iteraciones"
						elif [ $cont = 700 ]
 						then
								echo "pi es $pi con 800 iteraciones"
						elif [ $cont = 800 ]
 						then
								echo "pi es $pi con 900 iteraciones"
						elif [ $cont = 1000 ]
 						then
								echo "pi es $pi con 1000 iteraciones"
								pi1000=$pi
				fi

				((cont=$cont+1))
 		done
pireal=3.14159265
error1=$(echo "scale=8; (($p100-$pireal) / $pireal) * 100" | bc)
error2=$(echo "scale=8; 100*(($pi1000-$pireal) / $pireal)" | bc)
echo "------------------------------------------------------"
echo " El error porcentual despues de 100 iteraciones es 0$error1 %"
echo " El error porcentual despues de 1000 iteraciones es 0$error2 %"
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

