
for i in /home/bandelog /home/durasj
do
ID=""
ANSWER=""
for j in $( seq 0 1 )
do

USER=$(basename $i)
echo $USER
FILE=$i/submit.sh
cat << EOF > $FILE
#!/bin/bash
#SBATCH -p all
sleep 500
EOF

chown $USER $FILE
chmod +x $FILE


if [[ "$ID" -eq "" ]] ; then
	ANSWER=$(runuser -l $USER -c "cd && sbatch $FILE")
else 
	ANSWER=$(runuser -l $USER -c "cd && sbatch -d $ID $FILE")
fi
echo $ANSWER
ID=$(echo $ANSWER | awk '{ print $4}' )


done
done
