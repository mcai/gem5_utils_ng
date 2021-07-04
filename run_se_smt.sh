# Install extra prerequisites:
# sudo apt-get install python-six zlib1g-dev libpng-dev swig

scons ./build/ARM/gem5.opt -j 15

./build/ARM/gem5.opt \
./configs/example/se.py \
--cpu-type=DerivO3CPU \
--caches \
'--cmd=tests/test-progs/hello/bin/arm/linux/hello' \
--smt