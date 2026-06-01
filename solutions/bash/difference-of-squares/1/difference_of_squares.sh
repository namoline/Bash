#!/usr/bin/env bash

square_of_sum() {
    local n=$1
    local sum=0
    for ((i=1; i<=n; i++)); do
        sum=$((sum + i))
    done
    echo $((sum * sum))
}

sum_of_squares() {
    local n=$1
    local sum=0
    for ((i=1; i<=n; i++)); do
        sum=$((sum + i * i))
    done
    echo "$sum"
}

difference() {
    local n=$1
    local square_sum=$(square_of_sum "$n")
    local sum_squares=$(sum_of_squares "$n")
    echo $((square_sum - sum_squares))
}

main() {
    case "$1" in
        square_of_sum)
            square_of_sum "$2"
            ;;
        sum_of_squares)
            sum_of_squares "$2"
            ;;
        difference)
            difference "$2"
            ;;
        *)
            
            echo "Usage: $0 {square_of_sum|sum_of_squares|difference} n"
            exit 1
            ;;
    esac
}

main "$@"