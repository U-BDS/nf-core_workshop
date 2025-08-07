#!/usr/bin/env bash

# load environment
conda activate nfcore_workshop

# run workflow
nextflow run nf-core/rnaseq \
    --outdir ./results \
    -profile docker \
    -r 3.19.0 \
    -params-file ./params.yml
