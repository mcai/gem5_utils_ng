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

COPY gem5-full-system-files /gem5-full-system-files/
RUN cd /gem5-full-system-files/ && bzip2 -d ubuntu-18.04-arm64-docker.img.bz2
RUN cd /gem5-full-system-files/ && tar -xf aarch-system-20210904.tar.bz2 && rm aarch-system-20210904.tar.bz2

COPY build.sh /gem5/
COPY run.sh /gem5/
COPY term.sh /gem5/

RUN cd /gem5/util/term && make

RUN make -C /gem5/system/arm/bootloader/arm64

RUN apt -y install device-tree-compiler
RUN make -C /gem5/system/arm/dt

WORKDIR /gem5