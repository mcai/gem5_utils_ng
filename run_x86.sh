# Install extra prerequisites:
# sudo apt-get install python-six zlib1g-dev libpng-dev swig

scons ./build/X86/gem5.opt -j 15

./build/X86/gem5.opt \
./configs/example/se.py \
--cpu-type=DerivO3CPU \
--caches \
'--cmd=tests/test-progs/hello/bin/x86/linux/hello;tests/test-progs/hello/bin/x86/linux/hello' \
--smt