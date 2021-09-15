# Linux 2, group-assignment ansible automatically install LAMP on webserver and MySQL on databaseserver


## What every playbook does
**You need the sudo password for this to work!**

**To run a playbook type: ansible-playbook -i hosts [playbook] -K**



#### playbook.yml 
  - Installs LAMP-packages on webserver, disables default site and enables the one that we want to use. Sets user and group rights on relevant directories. Downloads application from repo.
  - Installs MySQL-server and python3-PyMySQL on databaseserver, sets root-password for mysql root user, deletes test database and anonymous users.
 
 
 #### playbookkey.yml
  - Sets public-key for specific git-user in authorized key on every relevant server.
  
  
 
 ## Scripts
 
 - These scripts are used for dumping, logging files across servers. Used with crontab and not ansible
