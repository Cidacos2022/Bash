for ((;;))

do

    echo "Introduzca  la cantidad"

    read  resto

    contador=()

    if [[ $resto -eq "exit" ]]

    then

        exit 0

    fi

    while [ $resto -ne 0 ]

    do

        if [[ 200 -le $resto ]]

        then

            let "resto-= 200"

            let "contador[200]+= 1"

            continue

        fi

        if [[ 100 -le $resto ]]

        then

            let "resto-= 100"

            let "contador[100]+= 1"

            continue

        fi

        if [[ 50 -le $resto ]]

        then

            let "resto-= 50"

            let "contador[50]+= 1"

            continue

        fi

        if [[ 20 -le $resto ]]

        then

            let "resto-= 20"

            let "contador[20]+= 1"

            continue

        fi

        if [[ 10 -le $resto ]]

        then

            let "resto-= 10"

            let "contador[10]+= 1"

            continue

        fi

        if [[ 5 -le $resto ]]

        then

            let "resto-= 5"

            let "contador[5]+= 1"

            continue

        fi

        if [[ 2 -le $resto ]]

        then

            let "resto-= 2"

            let "contador[2]+= 1"

            continue

        fi

        if [[ 1 -le $resto ]]

        then

            let "resto-= 1"

            let "contador[1]+= 1"

            continue

        fi

    done

    if [[ $((contador[200])) -ne 0 ]]

    then

        echo "$((contador[200])) monedas de 200"

    fi

    if [[ $((contador[100])) -ne 0 ]]

    then

        echo "$((contador[100])) monedas de 100"

    fi

    if [[ $((contador[50])) -ne 0 ]]

    then

        echo "$((contador[50])) monedas de 50"

    fi

    if [[ $((contador[20])) -ne 0 ]]

    then

        echo "$((contador[20])) monedas de 20"

    fi

    if [[ $((contador[10])) -ne 0 ]]

    then

        echo "$((contador[10])) monedas de 10"

    fi

    if [[ $((contador[5])) -ne 0 ]]

    then

        echo "$((contador[5])) monedas de 5"

    fi

    if [[ $((contador[3])) -ne 0 ]]

    then

        echo "$((contador[3])) monedas de 3"

    fi

    if [[ $((contador[1])) -ne 0 ]]

    then

        echo "$((contador[1])) monedas de 1"

    fi

done

