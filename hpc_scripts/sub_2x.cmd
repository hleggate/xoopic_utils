#!/bin/bash
#
# Slurm Submission Script

###pwd=${PWD##*/}
###current_dir="/mnt/scratch/hleggate/test"


#SBATCH --job-name=test_job
#SBATCH --output=slurm-%j.out
#SBATCH --error=slurm-%j.err
#SBATCH --chdir=/mnt/scratch/be/test
#SBATCH --partition=debug
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --ntasks-per-socket=20
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4800M
#SBATCH --time=0:05:00


srun --mpi=pmix \
     --ntasks=18 --ntasks-per-socket=18 --cpus-per-task=1 --cpu-bind=socket \
     --output=instance_0_%j.out --distribution=block:block --exact \
     ./hello_world &
srun --mpi=pmix \
     --ntasks=18 --ntasks-per-socket=18 --cpus-per-task=1 --cpu-bind=socket \
     --output=instance_1_%j.out --distribution=block:block --exact \
     ./hello_world &
wait




