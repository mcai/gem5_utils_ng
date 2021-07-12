cd /gem5-full-system-files/ && bzip2 -d ubuntu-18.04-arm64-docker.img.bz2
cd /gem5-full-system-files/ && tar -xf aarch-system-20210904.tar.bz2 && rm aarch-system-20210904.tar.bz2
mkdir -p /tempdir
mount -o loop,offset=65536 /gem5-full-system-files/ubuntu-18.04-arm64-docker.img /tempdir
cp -R /gem5-full-system-files/benchmarks /tempdir/root
umount /tempdir
rm -rf /tempdir