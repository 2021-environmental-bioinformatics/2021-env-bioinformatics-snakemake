#!/bin/bash
#SBATCH --time=500

snakemake --jobs 10 --cores all --cluster-config cluster.yaml --cluster "sbatch -A {cluster.account} -t {cluster.time} -p {cluster.queue} -N {cluster.nodes} --cores {cluster.cpupertask}"
