# Install extra prerequisites:
# sudo apt-get install python-six zlib1g-dev libpng-dev swig

scons ./build/ARM/gem5.opt -j 15

export M5_PATH=/home/itecgo/Tools/gem5-full-system-files

./build/ARM/gem5.opt configs/example/fs.py \
--kernel=$M5_PATH/binaries/vmlinux.vexpress_gem5_v1_64.20170616 \
--disk-image=$M5_PATH/disks/expanded-linaro-minimal-aarch64.img \
--script=../gem5_utils_ng/checkpoint.rcS