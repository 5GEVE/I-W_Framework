#!/bin/bash

NSID=$1
URL="http://localhost:8000/nslcm/v1/ns_instances/$NSID/terminate"
REQUEST=$2

echo $URL

curl -H "Content-Type: application/json" -H "Version: 1.0" -H "Accept: application/json" -d "@$REQUEST" -X POST $URL
