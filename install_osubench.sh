dnf install openmpi openmpi-devel make automake gcc gcc-c++
source /etc/profile.d/modules.sh
module load mpi/openmpi-x86_64
wget --no-check-certificate https://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-7.3.tar.gz
tar -xf osu-micro-benchmarks-7.3.tar.gz 
cd osu-micro-benchmarks-7.3 && ./configure CC=mpicc CXX=mpicxx && make -j4
