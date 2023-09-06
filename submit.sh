#!/bin/bash
#SBATCH --cpus-per-task=2
#SBATCH --mem=4096
#SBATCH --time=600000
#SBATCH --output=logs

singularity run --containall --writable-tmpfs --cleanenv --bind $HOME/benchmark_results:/phoronix-test-results/ oras://ghcr.io/thht/scc_benchmark/benchmarks:latest