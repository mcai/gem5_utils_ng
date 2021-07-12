export M5_PATH=/gem5-full-system-files

export TIMESTAMP=$(date +%Y%d%m_%H%M%S)

./build/ARM/gem5.opt \
-d m5out/$TIMESTAMP/ \
configs/example/fs.py \
--kernel=$M5_PATH/binaries/vmlinux.arm64 \
--disk-image=$M5_PATH/ubuntu-18.04-arm64-docker.img \
--dtb-file=./system/arm/dt/armv8_gem5_v1_1cpu.dtb \
--bootloader=$M5_PATH/binaries/boot.arm64 \
--cpu-type=O3_ARM_v7a_3 --caches \
-r 1 --checkpoint-dir=m5out_ckpt/ \
--script=$M5_PATH/benchmarks/CPU2006/462.libquantum/462.libquantum.rcS