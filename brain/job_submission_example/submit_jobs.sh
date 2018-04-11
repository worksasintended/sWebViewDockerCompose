
for i in /home/*/
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
runuser -l $USER -c "cd && sbatch $FILE"


done
