
for i in /home/*/
do

scancel -u $(basename $i)

done
