#!/bin/bash

URL="http://localhost:8000/nslcm/v1/ns_instances"

curl -H "Content-Type: application/json" -H "Version: 1.0" -d "@$1" -X POST $URL
