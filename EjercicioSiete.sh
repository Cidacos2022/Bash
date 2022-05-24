#!/bin/bash
echo "Escriba la contraseña"
read pass

lenght=`expr "$pass" : '.*'`

if (( $lenght >= 8 ))
then
    echo "The pass has more than 7 characters"
else
    echo "The pass does not have more than 7 characters"
    exit
fi

if [[ $pass =~ [0-9] ]]
then
    echo "The pass has numbers"
else
    echo "The pass does not have numbers"
    exit
fi

if [[ $pass == *['!'@#\$%^\&*()_+]* ]]
then
  echo "The pass have special characters"
else
  echo "The pass does not have special characters"
  exit
fi

echo "The pass is good"

