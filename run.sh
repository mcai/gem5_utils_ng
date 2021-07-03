export HOME=/home/itecgo
export FS=$HOME/Tools/gem5-full-system-files
export M5_PATH=$FS/aarch-system-20170616

cd ../gem5

./build/ARM/gem5.opt configs/example/fs.py \
--bootloader=$HOME/Tools/gem5-full-system-files/aarch-system-20170616/binaries/boot_emm.arm64 \
--kernel=$HOME/Tools/gem5-full-system-files/aarch-system-20170616/binaries/vmlinux.vexpress_gem5_v1_64.20170616 \
--machine-type=VExpress_GEM5_V1 \
--dtb-file=$HOME/Tools/gem5-full-system-files/aarch-system-20170616/binaries/armv8_gem5_v1_1cpu.20170616.dtb \
--disk-image=$HOME/Tools/gem5-full-system-files/aarch-system-20170616/disks/aarch64-ubuntu-trusty-headless.img \
--cpu-type=O3_ARM_v7a_3 --caches \
-r 1 \
-I 1000000

cd ../gem5_utils_ng