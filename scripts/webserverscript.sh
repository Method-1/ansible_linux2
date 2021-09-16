#!/bin/bash

timestamp=`date +%Y-%m-%d_%H:%M`;

scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.25:/var/log/apache2/access.log /home/adi91/backup/webserverlogs/access-$timestamp.log
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.25:/var/log/apache2/error.log /home/adi91/backup/webserverlogs/error-$timestamp.log
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.25:/var/log/auth.log /home/adi91/backup/webserverlogs/auth-$timestamp.log
scp -i /home/adi91/.ssh/id_rsa adi91@192.168.1.25:/var/log/faillog /home/adi91/backup/webserverlogs/faillog-$timestamp

find /home/adi91/backup/webserverlogs/* -mtime +7 -exec rm {} \;
