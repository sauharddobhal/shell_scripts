#!/bin/sh
#Menu based basic calculator
clear
sum=0
i="y"
echo "Enter First Number: "
read n1
echo "Enter Second Number: "
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter Your Choice"
read ch
case $ch in
    1)sum=`expr $n1 + $n2`
     echo "Sum ="$sum;;
        2)sum=`expr $n1 - $n2`
     echo "Sub = "$sum;;
    3)sum=`expr $n1 \* $n2`
     echo "Mul = "$sum;;
    4)sum=`expr $n1 / $n2`
     echo "Div = "$sum;;
    *)echo "Invalid Choice";;
esac
echo "Do you want to continue?:  "
read i
if [ $i != "y" ]
then
    exit
fi
done
