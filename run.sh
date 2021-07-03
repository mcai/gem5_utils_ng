export M5_PATH=/home/itecgo/Tools/gem5-full-system-files/aarch-system-20170616

export GEM5=$1 || gem5

cd ../$GEM5

./build/ARM/gem5.opt configs/example/fs.py \
--bootloader=$M5_PATH/binaries/boot_emm.arm64 \
--kernel=$M5_PATH/binaries/vmlinux.vexpress_gem5_v1_64.20170616 \
--machine-type=VExpress_GEM5_V1 \
--dtb-file=$M5_PATH/binaries/armv8_gem5_v1_1cpu.20170616.dtb \
--disk-image=$M5_PATH/disks/aarch64-ubuntu-trusty-headless.img \
--cpu-type=O3_ARM_v7a_3 --caches \
-r 1 \
-I 1000000

cd ../gem5_utils_ng