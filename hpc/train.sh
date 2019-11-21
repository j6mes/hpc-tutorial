#!/usr/bin/env bash
#SBATCH -A VLACHOS-SL3-GPU
#SBATCH -p pascal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=12G
#SBATCH --time=12:00:00
#SBATCH --gres=gpu:1

module load singularity/current

env
df -h
echo $(pwd)

TMPDIR=/local/$SLURM_JOB_ID
mkdir -pv $TMPDIR
singularity run --nv -B $TMPDIR:/ephemeral -B ~/rds/hpc-work/low-rank:/results ~/rds/low-rank.simg /work/scripts/job/run-cifar10-reg.sh
rm -rfv $TMPDIR