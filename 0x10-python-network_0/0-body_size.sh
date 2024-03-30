#!/bin/bash
# This script takes a URL as an argument, sends a request to that URL using curl, and displays the size of the response body in bytes

curl -s -w "%{size_download}" -o /tmp/response_body "$1"

