# docker build -t osu-microbench-debian .
# mpirun --allow-run-as-root -np 4 osu_barrier -f -i 100
sudo docker run --rm --workdir="/osu-micro-benchmarks-7.3/c/mpi/collective/blocking" -it osu-microbench-debian
