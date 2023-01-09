#!/bin/bash

#Perintah Build Docker Image dengan Dockerfile
docker build -t item-app:v1 .

#Perintah Melihat daftar docker images
docker images

#Perintah Merubah nama docker image ke nama sesuai dengan Github Packages
docker tag item-app:v1 ghcr.io/calvinchris/item-app:v1

#Perintah Login ke Github Container Registry
echo $GHCR_TOKEN | docker login ghcr.io -u calvinchris --password-stdin

#Perintah mengupload docker image ke Github Container Repository
docker push ghcr.io/calvinchris/item-app:v1
