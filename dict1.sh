#!/bin/bash -x

declare -A arr
cond=$((a!=10 || b!=10 || c!=10 || d!=10 || e!=10 || f!=10))
for ((a=0,b=0,c=0,d=0,e=0,f=0;cond;))
do
	dice=$(((RANDOM%6)+1))
	
		if (($dice == 1 ))
		then
			a=$(($a+1))
			arr[1]=$a
			if (($a==10))
			then
				echo "1 is reached 10 times and reached maximum times"
				break;
			fi
		elif (($dice == 2))
		then
			b=$(($b+1))
			arr[2]=$b
			if (($b==10))
			then
				echo "2 is reached 10 times and reached maximum times"
				break;
			fi
		elif (($dice == 3))
		then
			c=$(($c+1))
			arr[3]=$c
			if (($c==10))
			then
				echo "3 is reached 10 times and reached maximum times"
				break;
			fi
		elif (($dice == 4))
		then
			d=$(($d+1))
			arr[4]=$d
			if (($d==10))
			then
				echo "4 is reached 10 times and reached maximum times"
				break;
			fi
		elif (($dice == 5))
		then
			e=$(($e+1))
			arr[5]=$e
			if (($e==10))
			then
				echo "5 is reached 10 times and reached maximum times"
				break;
			fi
		elif (($dice == 6))
		then
			f=$(($f+1))
			arr[6]=$f
			if (($f==10))
			then
				echo "6 is reached 10 times and reached maximum times"
				break;
			fi
		fi
		
done
echo ${arr[@]}
echo ${!arr[@]}
max=${arr[1]}
min=${arr[1]}

for ((i=1;i<=6;i++))
do
	if ((arr[$i]>$max))
	then
		max=${arr[$i]}
		x=$i
	fi
	
	if ((arr[$i]<$min))
	then
		min=${arr[$i]}
		y=$i
	fi
	
done


echo "the $x  reached ${arr[$x]} times and  maximum times"
echo "The $y  reached ${arr[$y]} times and  mimimum times"
