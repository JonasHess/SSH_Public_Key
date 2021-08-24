#!/bin/sh 
openssl enc -d -aes-256-cbc -a -in $1 >> $2
