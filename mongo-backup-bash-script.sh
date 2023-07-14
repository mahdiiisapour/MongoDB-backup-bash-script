#!/bin/bash

MONGO_DATABASE="your_db_name"
APP_NAME="mongo1-backup"

MONGO_HOST="127.0.0.1"
MONGO_PORT="27017"
TIMESTAMP=`date +%F-%H%M`
MONGODUMP_PATH="/usr/bin/mongodump"
BACKUPS_DIR="/home/devops/backups/$APP_NAME"
BACKUP_NAME="$APP_NAME-$TIMESTAMP"

$MONGODUMP_PATH  -h $MONGO_HOST:$MONGO_PORT --archive > dump

mkdir -p $BACKUPS_DIR
mv dump $BACKUP_NAME
tar -zcvf $BACKUPS_DIR/$BACKUP_NAME.tgz $BACKUP_NAME
rm -rf $BACKUP_NAME
 
echo ""
echo ""
echo ""
echo "dump created succesfully"
echo ""
echo ""
echo ""