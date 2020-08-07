#!/bin/bash -l
#$ -l h_rt=24:00:00
#$ -m ea
#$ -N Mono3D_transient_50_4
#$ -j y
#$ -pe mpi_4_tasks_per_node 4
python M3D.py
echo $NSLOTS
