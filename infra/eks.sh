#! /usr/bin/env bash
# passo 1
# cria o cluster do eks na aws
eksctl create cluster --name=kafkak8s --managed --spot --instance-types=m5.xlarge \
    --nodes=2 --alb-ingress-access --node-private-networking --nodes-min=2 --nodes-max=3 \
    --full-ecr-access --asg-access --nodegroup-name=ng-kafkak8s \
    --profile raphawb --region=us-east-1

# --alb-ingress-access: ativa o load balance para escalabilidade
# --node=2 configura a quantidade de nodes aproveitando a carga distribuida do kafka
# --node-private-networking - config de rede
# --nodes-min=2 --nodes-max=3 - minimo e maximo de maquinas quando em escala
# --full-ecr-access - autorizacao para uso total do ecr