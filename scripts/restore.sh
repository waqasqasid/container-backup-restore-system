#!/bin/bash

FILE=$1

docker run --rm \
-v postgres_data:/restore \
-v $(pwd)/backups:/backup \
ubuntu \
bash -c "cd /restore && tar xzf /backup/$FILE --strip 1"
