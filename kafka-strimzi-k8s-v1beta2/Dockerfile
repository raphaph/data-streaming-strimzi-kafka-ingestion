# Kafka base image
FROM quay.io/strimzi/kafka:latest-kafka-3.6.0
MAINTAINER Raphael Barros <rapha.wb@hotmail.com>

# basicamente qm vai utilizar esta imagem é o Connect
# portanto é interessante levar todos arquivos necessário para as conversões e trabalho
# Use root user
USER root:root

# Create necessary directories
RUN mkdir -p /opt/kafka/plugins/kafka-connect-jdbc \
    && mkdir -p /opt/kafka/plugins/kafka-connect-avro

# Copy JDBC connector JAR files
COPY ./jars/ /opt/kafka/plugins/kafka-connect-jdbc/

# Download Avro and Avro Converter JAR files
RUN curl -L --output /opt/kafka/plugins/kafka-connect-avro/kafka-connect-avro-converter-7.3.1.jar \
    https://packages.confluent.io/maven/io/confluent/kafka-connect-avro-converter/7.3.1/kafka-connect-avro-converter-7.3.1.jar

# Download Avro and Avro Converter JAR files to jdbc folder
RUN curl -L --output /opt/kafka/plugins/kafka-connect-jdbc/kafka-connect-avro-converter-7.3.1.jar \
    https://packages.confluent.io/maven/io/confluent/kafka-connect-avro-converter/7.3.1/kafka-connect-avro-converter-7.3.1.jar

# You may need to add additional Avro dependencies
RUN curl -L --output /opt/kafka/plugins/kafka-connect-avro/avro-1.11.1.jar \
    https://repo1.maven.org/maven2/org/apache/avro/avro/1.11.1/avro-1.11.1.jar