pos_a="700 481"
pos_b="699 513"
pos_c="700 543"
pos_siguiente="992 585"
pos_empezar="988 602"
pausa="0.05"
pausa2="0.0"

#window_ff=`xdotool search "Mozilla Firefox" | head -1`
#window_konsole=`xdotool search --onlyvisible "konsole" | head -1`
pos_konsole="1155 433"
pos_a="564 484"
pos_b="563 516"
pos_c="563 546"
pos_siguiente="873 589"
pos_empezar="824 608"
pos_empezar2="781 523"



# 679394064:

pos_a="577 430"

pos_b="577 462"

pos_c="577 491"

pos_siguiente="868 527"

pos_empezar="869 553"

pos_empezar2="866 474"

while [ 1 ]; do 
sleep 1
inicio=`date +%s`
fin=$((inicio+8))
actual=`date +%s`
contador="0"

  xdotool mousemove $pos_empezar 
  xdotool click 1
  xdotool click 1
sleep 0.8
#until [ $actual -eq $fin ]
until [ $contador -eq "10" ]
do
actual=`date +%s`
echo $actual
sleep 0.6
contador=$((contador+1))

number=$RANDOM
opcion=$((number%3))
echo $contador


case $opcion in
0)
  #xdotool windowfocus $window_ff
  xdotool mousemove $pos_a 
  xdotool click 1
 # xdotool click 1
  echo "a";
  sleep $pausa 
  xdotool mousemove $pos_siguiente 
  sleep $pausa2
  xdotool click 1
#  sleep $pausa 
#  xdotool mousemove $pos_konsole
 # xdotool click 1
 # xdotool windowfocus $window_konsole_
  ;;
1)
  xdotool mousemove $pos_b 
  xdotool click 1
 # xdotool click 1
  echo "b";
  sleep $pausa 
  xdotool mousemove $pos_siguiente 
  sleep $pausa2
  xdotool click 1
#  sleep $pausa 
#  xdotool mousemove $pos_konsole
#  xdotool click 1
 # xdotool windowfocus $window_konsole_
  ;;
2)
  xdotool mousemove $pos_c 
  xdotool click 1
 # xdotool click 1
  echo "c";
  sleep $pausa 
  xdotool mousemove $pos_siguiente 
  sleep $pausa2
  xdotool click 1
#  sleep $pausa 
#  xdotool mousemove $pos_konsole
#  xdotool click 1
 # xdotool windowfocus $window_konsole_
  ;;
3)
  xdotool mousemove $pos_empezar 
  xdotool click 1
  sleep $pausa2
  xdotool click 1
  echo "empezar1";
# xdotool mousemove $pos_konsole
#  xdotool click 1
  ;;
4)
  xdotool mousemove $pos_empezar2
  xdotool click 1
  sleep $pausa2
  xdotool click 1
  echo "empezar2";
  xdotool mousemove $pos_konsole
  xdotool click 1
  ;;
*)
echo "Opcion desconocida";
  ;;
esac

done

done
 xdotool mousemove $pos_konsole
 xdotool click 1