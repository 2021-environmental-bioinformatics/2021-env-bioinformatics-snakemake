#!/bin/bash
#SBATCH --time=500
#SBATCH -p scavenger

snakemake --use-conda --jobs 10 --cores all --cluster-config cluster.yaml --cluster "sbatch --parsable -t 50 -p scavenger -N 1 --cores 5"
