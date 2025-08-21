#!/usr/bin/env bash

# prep your environment
# note that conda environment creation is listed in install instructions
conda init
conda activate nfcore_workshop

# run test profile
nextflow run nf-core/rnaseq \
    -profile test,docker \
    -r 3.19.0 \
    --outdir results_test
