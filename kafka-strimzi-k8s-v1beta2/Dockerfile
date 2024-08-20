# kafka version = 3.6 [latest]
# https://www.confluent.io/hub/confluentinc/kafka-connect-jdbc
# get image from strimzi repository
# https://quay.io/repository/strimzi/kafka

FROM quay.io/strimzi/kafka:latest-kafka-3.6.0
MAINTAINER Raphael Barros <rapha.wb@hotmail.com>

# using root user
USER root:root

# create dirs
RUN mkdir -p /opt/kafka/plugins/kafka-connect-jdbc

# copy jar files
COPY ./jars/ /opt/kafka/plugins/kafka-connect-jdbc/