#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER finance WITH ENCRYPTED PASSWORD 'finance';
    CREATE DATABASE finance_db OWNER=finance ENCODING='UTF8';
    ALTER ROLE finance WITH PASSWORD 'finance';
EOSQL

psql -v ON_ERROR_STOP=1 --username "finance" --dbname "finance_db" <<-EOSQL
    CREATE TABLE IF NOT EXISTS perseon (
      id varchar(255) primary key,
      name varchar(255),
      age int
    );
EOSQL
