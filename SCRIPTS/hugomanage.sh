#!/bin/bash
#Create a DRAFT folder first at /content/drafts
#Configure these Variables.
#LOCAL SIDE
HUGO_FOLDER=/Users/todfod/Documents/Blog                   #your hugo folder  
EDITOR=nvim

#SERVER SIDE
USER=root #Your Server User
HOSTNAME=todfod.xyz
WEBSITE=todfod.xyz
VPS_DIR=/var/www/todfod_blog/	                	# the directory where your web site files should go
dt=$(date '+%d/%m/%Y-%H:%M:%S');	    #date and time

#These variables need not be touched.
DRAFT_FOLDER=${HUGO_FOLDER}/content/drafts
POST_FOLDER=${HUGO_FOLDER}/content/posts

#Options available
mainprompt () {

echo "Welcome to the Hugo Manager. Select from these options below."
echo "1). Write a NEW POST"
echo "2). List the DRAFTS to edit" 
echo "3). Move a draft to the POSTS FOLDER" 
echo "4). Edit a PUBLISHED POT"
echo "5). Publish"
echo "0). EXIT"
read -p "Choose Option: " opt

} 

mainprompt
if [[ "${opt}" == 1 ]];
then
    read -p "The Title for Your POST: " title 
    cd ${HUGO_FOLDER}
    hugo new drafts/${title}.md
    read -p "START WRITING?y or n: " ask
    if [[ "${ask}" == "y" ]];
    then
        cd ${DRAFT_FOLDER}
        ${EDITOR} ${title}.md
    else
        echo "The NEW POST-${title}.md is in DRAFTS folder."
        exit 
    fi
    
#option 2. Select Draft to edit.

elif [[ "${opt}" == 2 ]];
then
    cd ${DRAFT_FOLDER}
    files=(*.md)
    echo "Here are the DRAFTS! Select through the NUMBERS!"
    #ls -1 ${DRAFT_FOLDER}| awk '{print NR, $0}'
    PS3='Select the Draft, 0 to exit: '
    select file in "${files[@]}";
        do
        if [[ $REPLY == "0" ]]; then
            echo 'Bye!' >&2
            exit
        elif [[ -z $file ]]; then
            echo 'Invalid choice, try again' >&2
        else
            ${EDITOR} $file
        fi
    cd ..
    done
    
#Move the Drafts to the Posts folder     
elif [[ "${opt}" == 3 ]];
then
    cd ${DRAFT_FOLDER}
    files=(*.md)
    echo "Here are the DRAFTS! Select which you want to move to the Posts folder for PUBLICATION"
    PS3='Select the Draft, 0 to exit: '
    select file in "${files[@]}";
        do
        if [[ $REPLY == "0" ]]; then
            echo 'Bye!' >&2
            exit
        elif [[ -z $file ]]; then
            echo 'Invalid choice, try again' >&2
        else
            sed -i .md 's/true/false/' ${file}
            mv ${file} ${POST_FOLDER}
            echo "${file} moved to POSTS!"
        fi
        done


#edit a published post
elif [[ "${opt}" == 4 ]];
then
    cd ${POST_FOLDER}
    files=(*.md)
    echo "Here are the PUBLISHED POSTS! Select the one you want to EDIT!"
    PS3='Select the Draft, 0 to exit: '
    select file in "${files[@]}";
        do
        if [[ $REPLY == "0" ]]; then
            echo 'Bye!' >&2
            exit
        elif [[ -z $file ]]; then
            echo 'Invalid choice, try again' >&2
        else
            ${EDITOR} ${file}
        fi
        done


#Publish the post
elif [[ "${opt}" == 5 ]];
then
    echo "STEP 1: Pushing to VPS"
    echo "----------------------------------------------------------"
    #HUGO AND RSYNC
    cd ${HUGO_FOLDER} 			#Your blog location
    hugo --quiet && rsync -avz --quiet  --delete ${HUGO_FOLDER}/public/ ${USER}@${HOSTNAME}:{VPS_DIR}   #Hugo build and rsync, all quiet
    echo "Published the blog contents to ${WEBSITE}"
    echo "----------------------------------------------------------"
    #GIT PORTION OF THE SCRIPT
    echo "STEP 2: Pushing to GIT"

    git add .
    git commit -m "Changes-${dt}" --quiet
    git push -u --quiet origin main
    cd ..
    echo "----------------------------------------------------------"
    echo "Files pushed to git!"
    echo "--------------------THE_END-------------------------------"
    exit 0

#exit
elif [[ ${opt} == 6 ]];
then
    echo "Thank You!"
    exit 0

else [[ -z ${opt} ]];
    echo 'Only 5 Options fren' >&2
    
fi
