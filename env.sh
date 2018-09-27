#!/bin/bash

# This shell script sets up the enviromental variables for you, 
# which you can use later to start the docker container.

export DB_CERT=$(node utils/fileToBase64.js .secrets/db/client-cert.pem)
export DB_KEY=$(node utils/fileToBase64.js .secrets/db/client-key.pem)
export DB_CA=$(node utils/fileToBase64.js .secrets/db/server-ca.pem)
export DB_IP=$(cat .secrets/db/db-ip)
export DB_PORT=$(cat .secrets/db/db-ip)
export DB_USER=$(cat .secrets/db/db-user)
export DB_PWD=$(cat .secrets/db/db-pwd)
export DB_SCHEMA=$(cat .secrets/db/db-schema)
export STORAGE_JSON=$(node utils/fileToBase64.js .secrets/storage/storage-secrets.json)
export STORAGE_PROJECT_ID=$(cat .secrets/storage/storage-project-id)