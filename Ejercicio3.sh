a=$1
n=$(date +%d)
m=$(date +%B)
if [ $a -gt 31 ];then
				echo "Ingresaste el numero $a" > Tarea2.log
				echo "Ingresa un numero válido: Entre el 1 y el 31" >> Tarea2.log
				break
		elif [ $a = $n ];then
				echo "los numeros son iguales"
				echo "Hoy es $a de $m"

		elif [ $a -lt $n ];then
				echo "el numero $a es menor al numero $n"
				echo "Han pasado $(($n - $a)) dias desde el $a de $m"
		elif [ $a -gt $n ];then
				echo " el numero $a es mayor al numero $n"
				echo "Faltan $(($a - $n)) dias para el $a de $m"
				fi



