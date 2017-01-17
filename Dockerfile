FROM openjdk:8
MAINTAINER Kirill Pavlov <kirk.spicy@gmail.com>

ENV SPARK_HOME /opt/spark-2.1.0-bin-hadoop2.7
RUN curl -sL --retry 3 \
    "http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz" \
    | gunzip \
    | tar x -C /opt/ \
    && chown -R root:root $SPARK_HOME
ENV PATH $PATH:${SPARK_HOME}/bin
