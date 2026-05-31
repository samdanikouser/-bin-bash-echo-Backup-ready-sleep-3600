#!/bin/bash

echo "Starting backup..."

pg_dump "$DATABASE_URL" > backup.sql

echo "Uploading backup..."

curl --upload-file backup.sql https://transfer.sh/inventra_backup.sql

echo "Backup completed - download link generated"

sleep 3600
