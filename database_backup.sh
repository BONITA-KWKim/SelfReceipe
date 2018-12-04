#!/bin/bash

DATABASE_CONTAINER_01=selfreceipe_pg_database_1
DATABASE_CONTAINER_02=selfreceipe_pg_database_2

BACKUP_FILE=database_backup.sql

#backup
docker exec -t $DATABASE_CONTAINER_01 pg_dumpall -c -U postgres > $BACKUP_FILE

# restore
cat $BACKUP_FILE | docker exec -i $DATABASE_CONTAINER_02 psql -U postgres

