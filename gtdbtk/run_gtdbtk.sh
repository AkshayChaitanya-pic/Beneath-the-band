#!/bin/bash
#SBATCH --time=120
#SBATCH --cpus-per-task=2 --mem=56gb

echo "Starting gtdbtk in $(pwd) at $(date)"

shopt -s expand_aliases
alias gtdbtk='apptainer run -B /pvol:/pvol,/pvol/data/mg/gtdbtkdata/release207_v2/:/refdata /pvol/data/sif/gtdbtk.sif'

gtdbtk classify_wf -x fa --cpus 2 --genome_dir genomes --out_dir out --skip_ani_screen

echo "Finished gtdbtk in $(pwd) at $(date)"
