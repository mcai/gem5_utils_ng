# Install extra prerequisites:
# sudo apt-get install python-six zlib1g-dev libpng-dev swig

export GEM5=$1 || gem5

cd ../$GEM5

time scons ./build/ARM/gem5.opt -j 15

cd ../gem5_utils_ng