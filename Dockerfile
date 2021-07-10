FROM ubuntu:18.04

RUN apt -y update
RUN apt -y upgrade

RUN apt -y install build-essential git m4 scons zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    python3-dev python3 python3-six doxygen libboost-all-dev \
    libhdf5-serial-dev python3-pydot libpng-dev libelf-dev pkg-config

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN update-alternatives --install /usr/bin/python python /usr/bin/python2 1

RUN git clone https://mcai:bywwnss@gitee.com/mcai/gem5.git

RUN cd /gem5 && scons build/ARM/gem5.opt -j7

RUN cd / && git clone https://mcai:bywwnss@gitee.com/mcai/gem5_utils_ng.git

WORKDIR /gem5
