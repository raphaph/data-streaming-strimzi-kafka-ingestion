#! /usr/bin/env bash
# passo 3
# cria o repositório do eks na aws
aws ecr create-repository --repository-name kafka-k8s-repository --image-scanning-configuration scanOnPush=true --region us-east-1 --profile raphawb