#!/bin/sh
##hugo portion of the script

USER=root		#Your Server User
HOSTNAME=todfod.xyz 	#Your Hostname, Can also be your Ip Address
WEBSITE=todfod.xyz        #Your website

VPS_DIR=/var/www/todfod/ 	  	# the directory where your web site files should go
LCL_DIR=~/Documents/Blog	 #Your hugo directory
dt=$(date '+%d/%m/%Y-%H:%M:%S');	#date and time

echo "STEP 1:"
echo "Currently pushing the blog files to the vps via RSYNC!"
echo "----------------------------------------------------------"


#HUGO AND RSYNC
cd ${LCL_DIR} 			#Your blog location
hugo --quiet && rsync -avz --delete ${LCL_DIR}/public/ ${USER}@${HOSTNAME}:${VPS_DIR}   #Hugo build and rsync, all quiet

echo "Published the blog contents to ${WEBSITE}"
echo "----------------------------------------------------------"

#GIT PORTION OF THE SCRIPT
echo "STEP 2:"
echo "Pushing the build files to git as a backup"

git add .
git commit -m "Changes-${dt}" --quiet
git push -u --quiet origin main
cd ..

echo "----------------------------------------------------------"

echo "Files pushed to git!"

echo "----------------------------------------------------------"
echo "--------------------THE_END-------------------------------"
exit 0
