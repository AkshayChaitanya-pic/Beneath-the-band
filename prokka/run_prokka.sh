#!/bin/bash
#SBATCH --time=90
#SBATCH --cpus-per-task=2 --mem=2gb

echo "Starting prokka in $(pwd) at $(date)"

shopt -s expand_aliases
alias prokka='apptainer run -B /pvol/:/pvol /pvol/data/sif/prokka.sif prokka'

while read bin; do
  prokka --cpus 2 --outdir "$bin" --prefix "$bin" "../metabat/bins_bbd/${bin}.fa"
done < ../checkm/bbd_topbins.txt

echo "Finished prokka in $(pwd) at $(date)"
