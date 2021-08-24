#!/bin/bash
set -e
BASEDIR=$(dirname "$0")
cd $BASEDIR

mkdir -p ~/.ssh/
#chmod 600 ~/.ssh/authorized_keys

file=~/.ssh/id_rsa_JH_Github

if [ -f "$file" ] ; then
    rm "$file"
fi

./keys/decrypt.sh ./keys/id_rsa_JH_Github.encrypted $file


# Setup Github
chmod -R 700 ~/.ssh/*
touch ~/.ssh/known_hosts
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
chmod -R 400 ~/.ssh/*
chmod 700 ~/.ssh/


read -p "Enter Your Name: " name
read -p "Enter Your E-Mail: " email

git config --global user.name $name
git config --global user.email $email

