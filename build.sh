#!/usr/bin/env bash

for app in $(find . -maxdepth 1 -type d -iname 'a*' -not -path '*/\.*'); do
    echo "Building ${app}..."

    name="$(basename "${app%%_-_*}" | tr '[:upper:]' '[:lower:]')"
    docker build \
        -t shizonic/owasp-top-10-examples:$name \
        --build-arg USER_ID=$(id -u) \
        --build-arg GROUP_ID=$(id -g) \
        --build-arg APP_NAME=$app \
        -f Dockerfile .
done

