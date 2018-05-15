FROM ubuntu:xenial
RUN apt-get update
ADD docker/scripts /tmp/
RUN bash /tmp/install_java.sh
RUN apt-get install -y \
        build-essential \
        curl \
        libcurl3-dev \
        git \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python-dev \
        python-numpy \
        python-pip \
        software-properties-common \
        swig \
        zip \
        zlib1g-dev
RUN bash /tmp/install_bazel.sh
ADD docker/build.sh /tmp
ADD . /serving/
WORKDIR /serving/
RUN /tmp/build.sh
#RUN /tmp/run_server.sh
EXPOSE 8500
