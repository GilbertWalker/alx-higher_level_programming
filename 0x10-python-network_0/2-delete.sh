#!/bin/bash
# This script sends a GET request to a URL using curl and displays the body of the response for a 200 status code

curl -s -o /tmp/response_body -w "%{http_code}" "$1" | awk 'BEGIN { status_code=0 } { if (NR==1) { status_code=$1 } else if (status_code==200) { print $0 } }'

