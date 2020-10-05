#! /bin/sh
#PBS -N 2411
#PBS -l select=38
#PBS -A n02-chem
#PBS -l walltime=24:00:00

export MPICH_ENV_DISPLAY=1
cd $PBS_O_WORKDIR

aprun -n 900 ./les.mpi | tee uclales-salsa.output

set -ex
