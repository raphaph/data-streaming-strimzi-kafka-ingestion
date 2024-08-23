# EXEMPLO
aws ecr get-login-password --region us-east-1 --profile raphawb | docker login --username AWS --password-stdin 428189791752.dkr.ecr.us-east-1.amazonaws.com

docker build -t kafka-k8s-repo .
# docker build -t kafka-k8s-repository:lastest . # para atualização

docker tag kafka-k8s-repo:latest 428189791752.dkr.ecr.us-east-1.amazonaws.com/kafka-k8s-repo:latest

docker push 428189791752.dkr.ecr.us-east-1.amazonaws.com/kafka-k8s-repo:latest