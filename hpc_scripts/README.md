# XOOPIC HPC scripts

This script should run 2 instances of an executable on a single node on ISCHYS, one on each socket. There is also a test program, compile with...

```
mpicc -o hello_world hello_world.c
```

run with
```
sbatch sub_2x.cmd
```

