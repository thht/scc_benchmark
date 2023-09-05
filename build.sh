#! /bin/sh

mkdir images

echo "$secrets.GITHUB_TOKEN" | apptainer remote login -u "$secrets.GHCR_USERNAME" --password-stdin oras://ghcr.io

apptainer build images/phoronix.sif phoronix.def
apptainer push images/phoronix.sif oras://ghcr.io/${GITHUB_REPOSITORY}/benchmarks:latest