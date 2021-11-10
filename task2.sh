# проверка наличия параметров

if [ "$#" -eq 2 ]
then
# First input: direction left->rihgt, second one
temp1=$( cat /home/arseny/laba1/file )
if [ "${temp1:(-1)}" -eq 0 ]
then
arr[1]=1
arr[2]=1
arr[3]=1
arr[4]=1
arr[5]=1
while [ 1 ]
do
# вывод номера со сдвигом
    temp=$( cat /home/arseny/laba1/file )
    if [ "$temp" != "$temp1" ] 
    then 
        sleep $1
    fi
    
    if [ "${temp1:0:2}" -eq 10 ] 
    then
        for i in 1 2 3 4 5
        do
            
            arr[$i]=0
            
            echo ${arr[@]}
            arr[$i]=1
            sleep $2
            temp1=$temp
        done
     else 
         for i in 5 4 3 2 1
         do
            arr[$i]=0
            echo ${arr[@]}
            arr[$i]=1
            sleep $2
            temp1=$temp
         done
     fi
done

else 
# Вывод счета с заданным интервалом
interval=1
counter=0
N=15
D2B=({0..1}{0..1}{0..1}{0..1}{0..1})
while [[ "$counter" -lt "$N" ]]
do 
    let "counter=$counter+$interval"
    echo ${D2B[$counter]}
    sleep $2
done
fi



else
# Если введено меньше двух параметров
echo 2 parametrs required
echo but $# parametrs were given
fi









    
