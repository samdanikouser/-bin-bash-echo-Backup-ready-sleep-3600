#!/bin/bash

echo "Starting backup..."

pg_dump "$DATABASE_URL" > backup.sql

echo "Cloning backup repo..."

git clone https://github.com/samdanikouser/db-backups.git

cd db-backups

cp ../backup.sql ./backup-$(date +%Y-%m-%d-%H-%M).sql

git config user.email "backup@system.com"
git config user.name "render-backup-bot"

git add .
git commit -m "DB backup $(date)"
git push

echo "Backup stored in GitHub repo"
sleep 3600
