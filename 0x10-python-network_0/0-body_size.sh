#!/bin/bash

# Check if URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a request to the URL and store the response body in a temporary file
response=$(curl -s -w "%{size_download}" -o /tmp/response_body "$1")

# Display the size of the response body in bytes
echo "$response"

