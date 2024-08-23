# acessa a instância do kafka e consulta em tempo real os dados recebido no tópico especificado

kubectl exec kafkabroker-kafka-0 -n ingestion -c kafka -it -- bin/kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --property print.key=true --from-beginning \
    --topic ingest-src-postgresql-customers \
    --from-beginning # este pega todo o dado anterior