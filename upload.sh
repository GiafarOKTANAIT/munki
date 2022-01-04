#!/bin/bash

if [ -f .env ]; then
    # Load Environment Variables
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
    # For instance, will be example_kaggle_key
    sshpass -p $MUNKI_SSH_PASSWORD rsync -rlpt --progress --stats -e ssh ./munki_repo/ $MUNKI_SSH_USER@$MUNKI_SSH_HOST:/usr/local/munki_repo/
     
fi
