#! /usr/bin/env bash
# passo 2
# cria arquivo de configuração na maquina para interagir com o kubernetes na aws
# arquivo kube.config
eksctl utils write-kubeconfig -c kafkak8s -r us-east-1 --profile raphawb