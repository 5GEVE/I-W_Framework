#!/bin/bash

curl  -H "Accept: application/json" http://10.50.80.10:8083/nsd/v1/ns_descriptors | python3 -m json.tool
