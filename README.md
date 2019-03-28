# determinismCaseStudies

This repository contains benchmarks reported in the paper: http://mir.cs.illinois.edu/legunsen/pubs/ShiETAL16NonDex.pdf and scripts to run the determinism checker on each of those benchmarks.

Commands to run determinism checker on `reflectasm`:
```
cd nondex
./detCheck_reflectasm.sh
```

This will produce a file `detOut` in the folder nondex/reflectasm with the errors detected by determinism checker.
