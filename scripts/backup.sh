#!/bin/bash

DATE=$(date +%F-%H%M)

BACKUP_DIR=./backups

mkdir -p $BACKUP_DIR

docker run --rm \
-v postgres_data:/source \
-v $(pwd)/backups:/backup \
ubuntu \
tar czf /backup/postgres-$DATE.tar.gz /source
