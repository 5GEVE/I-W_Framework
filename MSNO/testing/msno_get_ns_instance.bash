#!/bin/bash

curl -H "Version: 1.0" -H "Content-Type: application/json" -H "Accept: application/json" localhost:8000/nslcm/v1/ns_instances/$1
