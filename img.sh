mkdir -p /tempdir
bzip2 -d /gem5-full-system-files/ubuntu-18.04-arm64-docker.img.bz2
mount -o loop,offset=32256 /gem5-full-system-files/ubuntu-18.04-arm64-docker.img /tempdir
cp -R /gem5-full-system-files/benchmarks /tempdir/home/root
umount /tempdir
rm -rf /tempdir
bzip2 -z /gem5-full-system-files/ubuntu-18.04-arm64-docker.img