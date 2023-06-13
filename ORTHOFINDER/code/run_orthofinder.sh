#!/bin/bash
#PBS -q par16
#PBS -l nodes=1:ppn=16
#PBS -N orthofinder
#PBS -V

cd $PBS_O_WORKDIR
source activate ORTHOFINDER

#mkdir -p ./../results_all
orthofinder -I 1.8 -t 16 -a 8 -f ./../data/ -o ./../results_with_mariasmus


