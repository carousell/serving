#!/bin/bash -ex
apt-get update
apt-get install -y pkg-config zip g++ zlib1g-dev unzip python wget
BAZEL_VERSION=0.11.0
wget https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh
chmod +x bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh
bash bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh
#echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
#curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
#apt-get update
#apt-get install -y  --allow-unauthenticated  bazel
