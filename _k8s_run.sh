#!/bin/sh

# First, build galaxy image from official PhenoMeNal Docker registry
docker build -t galaxy .

# Start pods needed with docker-compose
docker-compose -f k8s.yaml up -d

# Kubernetes control replication and service deploying
kubectl create -f k8s_rc.yaml
kubectl create -f k8s_service.yaml


