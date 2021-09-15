#!/bin/bash

timestamp=`date +%Y-%m-%d_%H:%M`;

scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.22:/var/log/syslog /home/adi91/backup/databaselogs/syslog-$timestamp
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.22:/var/log/boot.log /home/adi91/backup/databaselogs/boot-$timestamp.log
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.22:/var/log/auth.log /home/adi91/backup/databaselogs/auth-$timestamp.log
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.22:/var/log/faillog /home/adi91/backup/databaselogs/faillog-$timestamp
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.22:/var/log/mysql/error.log /home/adi91/backup/databaselogs/mysqlerror-$timestamp.log

find /home/adi91/backup/databaselogs/* -mtime +7 -exec rm {} \;
