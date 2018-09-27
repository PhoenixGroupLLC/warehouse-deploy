#!/bin/bash

docker run -t -i \
-p 8080:8080 \
-e DB_CERT=$(node utils/fileToBase64.js .secrets/db/client-cert.pem) \
-e DB_KEY=$(node utils/fileToBase64.js .secrets/db/client-key.pem) \
-e DB_CA=$(node utils/fileToBase64.js .secrets/db/server-ca.pem) \
-e DB_IP=$(cat .secrets/db/db-ip) \
-e DB_PORT=$(cat .secrets/db/db-port) \
-e DB_USER=$(cat .secrets/db/db-user) \
-e DB_PWD=$(cat .secrets/db/db-pwd) \
-e DB_SCHEMA=$(cat .secrets/db/db-schema) \
-e STORAGE_JSON=$(node utils/fileToBase64.js .secrets/storage/storage-secrets.json) \
-e STORAGE_PROJECT_ID=$(cat .secrets/storage/storage-project-id) \
-d warehouse