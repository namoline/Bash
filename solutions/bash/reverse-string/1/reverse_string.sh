#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
function_reverse(){
word=$*
# longueur du mot
word_lg=${#word}
word_Array=()

# test if string is empty
if (( word_lg == 0 )); then
	echo ""
	
else 
	# creation d'un array de caractères
	for (( i=0; i<word_lg; i++ )); do 

		word_Array[i]="${word:$i:1}"

	done

	# creation du mot inverse
	word_inverse=""
	for ((j=word_lg; j>=0;j--)); do
		word_inverse="${word_inverse}${word_Array[j]}"

	done

fi
echo "$word_inverse"
}
#
  main () {
    function_reverse "$@"
  }
#
#   # call main with all of the positional arguments
   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***
