# Benchmarks for the SCC

Please run like this:

```
singularity run --containall --writable-tmpfs --cleanenv --bind /tmp/benchmark_results:/phoronix-test-results/ oras://ghcr.io/thht/scc_benchmark/benchmarks:latest
```