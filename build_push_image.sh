#!/bin/bash

#Perintah Build Docker Image dengan Dockerfile
docker build -t ghcr.io/calvinchris/karsajobs-ui:latest .

#Perintah Login ke Github Container Registry
echo $GHCR_TOKEN | docker login ghcr.io -u calvinchris --password-stdin

#Perintah mengupload docker image ke Github Container Repository
docker push ghcr.io/calvinchris/karsajobs-ui:latest