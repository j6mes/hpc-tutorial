#!/usr/bin/env bash
#SBATCH -A VLACHOS-SL2-CPU
#SBATCH -p skylake
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --time=00:05:00
#SBATCH --reservation=nlp-course

echo "This is job " $SLURM_JOB_ID " - current working directory is" $(pwd)
module load python/3.5.1

python -c "print('hello from python')"
