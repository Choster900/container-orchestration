#!/bin/bash
set -e

echo "Running init-user-db.sh script..."

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER billingapp WITH PASSWORD 'qwerty';
    ALTER USER billingapp WITH SUPERUSER;
    CREATE DATABASE billingapp_db;
    GRANT ALL PRIVILEGES ON DATABASE billingapp_db TO billingapp;
    GRANT ALL ON SCHEMA public TO billingapp;
EOSQL

echo "Script executed successfully!"

