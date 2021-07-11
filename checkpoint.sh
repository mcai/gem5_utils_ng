export M5_PATH=/gem5-full-system-files

./build/ARM/gem5.opt configs/example/fs.py \
--kernel=$M5_PATH/binaries/vmlinux.arm64 \
--disk-image=$M5_PATH/ubuntu-18.04-arm64-docker.img \
--dtb-file=./system/arm/dt/armv8_gem5_v1_1cpu.dtb \
--bootloader=$M5_PATH/binaries/boot.arm64 \
--script=./checkpoint.rcS