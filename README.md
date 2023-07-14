# MongoDB-backup-bash-script


This simple script makes MongoDB dump with Timestamp and compresses it with tgz. 
It's possible to automate this process with passing this script to a scheduled Jenkins job or pass it to a Cron-job.

Remember to specify these values:

MONGO_DATABASE="Specify the DB name in mongo"
APP_NAME="This name will be used in backup name"
MONGO_HOST="Ip address of the mongo host"
MONGO_PORT="By default 27017"
BACKUPS_DIR="Destination path for backups"

