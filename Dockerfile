# syntax=docker/dockerfile:1
FROM debian:bullseye
RUN apt update && apt install openmpi-bin wget build-essential tar libevent-dev libopenmpi-dev -y
RUN wget https://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-7.3.tar.gz
RUN tar -xf osu-micro-benchmarks-7.3.tar.gz 
RUN cd osu-micro-benchmarks-7.3 && ./configure CC=mpicc CXX=mpicxx && make -j4
