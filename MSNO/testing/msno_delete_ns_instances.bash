#!/bin/bash

URL="http://localhost:8000/nslcm/v1/ns_instances/$1"

curl -H "Content-Type: application/json" -H "Version: 1.0" -X DELETE $URL
