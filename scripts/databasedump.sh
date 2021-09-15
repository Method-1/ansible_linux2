#!/bin/bash

timestamp=`date +%Y-%m-%d`;

scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.22:/home/adi91/dumps/dump_newsdb.sql /home/adi91/backup/backupdumps/dump_newsdb-$timestamp.sql
find /home/adi91/backup/backupdumps/* -mtime +30 -exec rm {} \;
