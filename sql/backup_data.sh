#!/bin/sh


#for db in schooldb tdb testdb; do
for db in `cat backup/dbs.txt`; do
    echo $db
    mysqldump -u root -p"TestdbRoot" -h 127.0.0.1 -P 3308 -R $db > backup/$db.sql
done
