aws ecr get-login-password --region us-east-1 --profile raphawb | docker login --username AWS --password-stdin 428189791752.dkr.ecr.us-east-1.amazonaws.com

docker build -t kafka-k8s-repository .

docker tag kafka-k8s-repository:latest 428189791752.dkr.ecr.us-east-1.amazonaws.com/kafka-k8s-repository:latest

docker push 428189791752.dkr.ecr.us-east-1.amazonaws.com/kafka-k8s-repository:latest