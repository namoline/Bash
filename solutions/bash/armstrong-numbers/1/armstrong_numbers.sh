#!/usr/bin/env bash

# functions
check_param(){
number=$1
re='^[0-9]+$'
if [[ -z "$number" ]]; then
        # no number send
         echo "Please execute this program using a number as parameter."
         exit 1
fi
if ! [[ $number =~ $re ]] ; then
        echo "error: Not a number" 
        exit 1
fi
}

is_amstrong(){
nombre=$1
# check the parameter
check_param $nombre
nbdig=${#nombre}
chiffres=()
calcul=0
for (( i=0; i<${#nombre}; i++ )); do 
        chiffres[i]="${nombre:$i:1}"
        calcul=$calcul+${chiffres[i]}**nbdig
done

if [[ $nombre -eq $calcul ]]; then
        echo "true"
else
        echo "false"

fi


}
# main
main(){
is_amstrong "$@"
}

# call main with all of the positional arguments
 main "$@"

