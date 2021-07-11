export M5_PATH=/gem5-full-system-files

./build/ARM/gem5.opt configs/example/fs.py \
--kernel=$M5_PATH/binaries/vmlinux.arm64 \
--disk-image=$M5_PATH/ubuntu-18.04-arm64-docker.img \
--dtb-file=./system/arm/dt/armv8_gem5_v1_1cpu.dtb \
--bootloader=$M5_PATH/binaries/boot.arm64 \
--script=$M5_PATH/benchmarks/CPU2006/462.libquantum/462.libquantum.rcS \
--cpu-type=O3_ARM_v7a_3 --caches -r 1

# ./build/ARM/gem5.opt configs/example/fs.py \
# # --bootloader=$M5_PATH/binaries/boot_emm.arm64 \
# --kernel=$M5_PATH/binaries/vmlinux.arm64 \
# --disk-image=$M5_PATH/disks/ubuntu-18.04-arm64-docker.img \
# # --machine-type=VExpress_GEM5_V1 \
# # --dtb-file=$M5_PATH/binaries/armv8_gem5_v1_1cpu.20170616.dtb \
# # --script=$M5_PATH/benchmarks/CPU2006/462.libquantum/462.libquantum.rcS \
# --cpu-type=O3_ARM_v7a_3 --caches