#!/bin/bash

echo "Starting backup..."

pg_dump "$DATABASE_URL" > inventra_backup.sql

echo "Backup completed"
sleep 3600
