pos_a="700 481"
pos_b="699 513"
pos_c="700 543"
pos_siguiente="992 585"
pos_empezar="988 602"
pausa="0.1"

#window_ff=`xdotool search --onlyvisible "Vodafone" | head -1`
#window_konsole=`xdotool search --onlyvisible "konsole" | head -1`



#  xdotool windowfocus $window_ff
#  xdotool mousemove $pos_a 
#  xdotool click 1
 # xdotool click 1


read -n 1 -t 2 opcion
testa=${opcion}7
echo "testa: $testa"
if [ $opcion = "" ]
then

number=$RANDOM
opcion=$((number%3+8))
echo "aleatorio"
fi