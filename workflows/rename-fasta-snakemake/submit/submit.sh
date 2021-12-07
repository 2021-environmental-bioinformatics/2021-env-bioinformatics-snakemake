#!/bin/bash
#SBATCH --time=500

snakemake --cores 1 --cluster-config cluster.yaml "sbatch -A {cluster.account} -t {cluster.time} -p {cluster.queue} -N {cluster.nodes} --cores {cluster.cpupertask}"
