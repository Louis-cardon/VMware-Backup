#!/usr/bin/bash

source $1

#declaration varriables
today=$(date +%Y-%m-%d)
backup_file=$destination_backup/backup_$FQDN"_"$today.tar.gz
db_backupfile=$destination_backup/export_$db_name"_"$today.sql

#export DB
mysqldump -u$db_login -p$db_pwd $db_name > $db_backupfile

#création archive
tar -czf $backup_file $vhost $website_files $db_backupfile

#clean export DB
#rm$backup_file
