#!/bin/bash

# Install protobuf
cd /tmp && curl -OL https://github.com/google/protobuf/releases/download/v3.4.0/protoc-3.4.0-linux-x86_64.zip
unzip /tmp/protoc-3.4.0-linux-x86_64.zip -d /tmp/protoc3
mv /tmp/protoc3/bin/* /usr/local/bin/
mv /tmp/protoc3/include/* /usr/local/include/
