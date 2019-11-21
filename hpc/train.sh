#!/usr/bin/env bash
#SBATCH -A VLACHOS-SL3-GPU
#SBATCH -p pascal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=12G
#SBATCH --time=12:00:00
#SBATCH --gres=gpu:1
#SBATCH --reservation=nlp-course

module load singularity/current
singularity run --nv -B ~/rds/hpc-work/tutorial:/results ~/rds/low-rank.simg python -m allennlp.run -f -s /results/cnn/ /work/configs/feverlite-s2v-cnn.json
