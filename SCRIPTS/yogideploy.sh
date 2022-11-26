#!/bin/sh
##hugo portion of the script

USER=root		        #Your Server User
HOSTNAME=todfod.xyz 	#Your Hostname
WEBSITE=yogilib        #Your website

VPS_DIR=/var/www/yogilib/ 	  	# the directory where your web site files should go
LCL_DIR=~/MAIN/PROJECTS/YOGILIB #Your directory
dt=$(date '+%d/%m/%Y-%H:%M:%S');	#date and time

echo "STEP 1:"
echo "Currently pushing the blog files to the vps via RSYNC!"
echo "----------------------------------------------------------"

#HUGO AND RSYNC
rsync -avz --delete ${LCL_DIR}/ ${USER}@${HOSTNAME}:${VPS_DIR}   

echo "----------------------------------------------------------"
echo "Published the blog contents to ${WEBSITE} on ${dt}"
exit 0
