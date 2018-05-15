#!/bin/bash -ex
wget https://d3kbcqa49mib13.cloudfront.net/spark-2.1.1-bin-hadoop2.7.tgz
tar -xzf spark-2.1.1-bin-hadoop2.7.tgz && mv spark-2.1.1-bin-hadoop2.7 spark
wget https://github.com/google/protobuf/releases/download/v3.3.0/protoc-3.3.0-linux-x86_64.zip
unzip protoc-3.3.0-linux-x86_64.zip -d protoc3
export SPARK_HOME=$PWD/spark/
export PATH=$PATH:$PWD/spark/bin/:$PWD/protoc3/bin/
