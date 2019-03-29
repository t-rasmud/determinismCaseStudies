# determinismCaseStudies

This repository contains benchmarks reported in the paper: http://mir.cs.illinois.edu/legunsen/pubs/ShiETAL16NonDex.pdf and scripts to run the determinism checker on each of those benchmarks.

# Building the determinism checker
```
git clone https://github.com/t-rasmud/checker-framework.git
git checkout nondet-checker
export CHECKERFRAMEWORK=`pwd`/checker-framework
cd $CHECKERFRAMEWORK
./gradlew cloneAndBuildDependencies
cd $CHECKERFRAMEWORK
./gradlew assemble
```
# Running the determinism checker on a benchmark

Ensure that environment variable `CHECKERFRAMEWORK` is set and it points to the the directory that contains the determinism checker.

Commands to run determinism checker on `reflectasm`:
```
cd nondex
./detCheck_reflectasm.sh
```

This will produce a file `detOut` in the folder nondex/reflectasm with the errors detected by determinism checker.
