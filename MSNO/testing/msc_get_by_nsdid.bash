#!/bin/bash

curl  -H "Accept: application/json" http://localhost:8083/nsd/v1/ns_descriptors?nsdId=$1 | python3 -m json.tool
