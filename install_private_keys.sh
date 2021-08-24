#!/bin/bash
set -e
BASEDIR=$(dirname "$0")
cd $BASEDIR

mkdir -p ~/.ssh/
#chmod 600 ~/.ssh/authorized_keys

./keys/decrypt.sh ./keys/id_rsa_JH_Github.encrypted ~/.ssh/id_rsa_JH_Github
chmod 600 ~/.ssh/id_rsa_JH_Github
chmod 700 ~/.ssh/

