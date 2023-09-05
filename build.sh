#! /bin/sh

mkdir images

apptainer build images/phoronix.sif phoronix.def
apptainer push images/phoronix.sif oras://ghcr.io/${GITHUB_REPOSITORY}/benchmarks:latest