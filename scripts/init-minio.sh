#!/bin/sh

set -eu

until /bin/mc alias set airbyte "$MINIO_ENDPOINT" "$MINIO_ROOT_USER" "$MINIO_ROOT_PASSWORD" >/dev/null 2>&1; do
  sleep 2
done

for bucket in airbyte-bucket state-storage airbyte-dev-logs; do
  /bin/mc mb --ignore-existing "airbyte/$bucket"
done
