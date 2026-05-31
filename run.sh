#!/bin/bash

echo "Starting backup..."

pg_dump "$DATABASE_URL" > backup.sql

echo "Backup completed"

sleep 3600
