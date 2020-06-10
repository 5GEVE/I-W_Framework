#!/bin/bash

curl  -H "Accept: application/json" http://localhost:8083/nsd/v1/ns_descriptors | python3 -m json.tool
