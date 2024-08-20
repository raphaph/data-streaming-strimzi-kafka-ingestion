(Get-ECRLoginCommand -Region us-east-1).Password | docker login --username AWS --password-stdin 428189791752.dkr.ecr.us-east-1.amazonaws.com

docker build -t kafka-k8s-repository . # caminhar até a pasta onde esta o Dockefile antes de executar

docker tag kafka-k8s-repository:latest 428189791752.dkr.ecr.us-east-1.amazonaws.com/kafka-k8s-repository:latest

docker push 428189791752.dkr.ecr.us-east-1.amazonaws.com/kafka-k8s-repository:latest