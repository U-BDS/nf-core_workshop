#!/usr/bin/env bash

#SBATCH --job-name=nfcore_rnaseq
#SBATCH --output=nfcore_rnaseq.out
#SBATCH --error=nfcore_rnaseq.err
#SBATCH --time=12:00:00
#SBATCH --partition=short
#SBATCH --mem-per-cpu=5000
#SBATCH --cpus-per-task=1

# load environment
module load Anaconda3
conda activate $USER_SCRATCH/conda_envs/nfcore_workshop

# run workflow
nextflow run nf-core/rnaseq \
    --outdir ./results \
    -profile cheaha \
    -r 3.19.0 \
    -params-file ./params.yml
