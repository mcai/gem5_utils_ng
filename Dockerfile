FROM ubuntu:18.04

RUN apt -y update
RUN apt -y upgrade

RUN apt -y install build-essential git m4 scons zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    python3-dev python3 python3-six doxygen libboost-all-dev \
    libhdf5-serial-dev python3-pydot libpng-dev libelf-dev pkg-config \
    g++-aarch64-linux-gnu gdb python-six device-tree-compiler wget

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN update-alternatives --install /usr/bin/python python /usr/bin/python2 1

RUN cd gem5-full-system-files \
    && wget -N http://dist.gem5.org/dist/v21-0/arm/aarch-system-20210904.tar.bz2 \
    && wget -N http://dist.gem5.org/dist/current/arm/disks/ubuntu-18.04-arm64-docker.img.bz2 \
    && tar -xf aarch-system-20210904.tar.bz2 && rm aarch-system-20210904.tar.bz2 \
    && bzip2 -d ubuntu-18.04-arm64-docker.img.bz2
COPY gem5-full-system-files /gem5-full-system-files/

RUN git clone https://github.com/gem5/gem5.git

RUN cd /gem5/util/term && make
RUN make -C /gem5/system/arm/bootloader/arm64
RUN make -C /gem5/system/arm/dt

COPY 0.build.sh /gem5/
COPY 1.img.sh /gem5/
COPY 2.ckpt.sh /gem5/
COPY 3.run.sh /gem5/
COPY 4.term.sh /gem5/
COPY .vscode/launch.json /gem5/.vscode/launch.json

WORKDIR /gem5
