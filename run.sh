#!/usr/bin/env bash

docker run -i -t --rm -p 3000:3000 owasp-top-10-examples:$1
