#!/usr/bin/env bash

#SBATCH --job-name=rnaseq_test
#SBATCH --output=rnaseq_test.out
#SBATCH --error=rnaseq_test.err
#SBATCH --time=2:00:00
#SBATCH --partition=express
#SBATCH --mem-per-cpu=5000
#SBATCH --cpus-per-task=1

# prep your environment
# note that conda environment creation is listed in install instructions
module load Anaconda3
conda activate $USER_SCRATCH/conda_envs/nfcore_workshop

# run test profile
nextflow run nf-core/rnaseq -profile test,cheaha -r 3.19.0 --outdir results_test