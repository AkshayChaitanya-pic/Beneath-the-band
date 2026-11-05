#!/bin/bash
#SBATCH --time=60
#SBATCH --cpus-per-task=6 --mem=40gb

echo "Starting checkm in $(pwd) at $(date)"

shopt -s expand_aliases
alias checkm='apptainer run -B /pvol/:/pvol /pvol/data/sif/checkm.sif checkm'

checkm lineage_wf bins_bbd out -t 6 -x fa -f checkm_results_bbd.txt

echo "Finished checkm in $(pwd) at $(date)"