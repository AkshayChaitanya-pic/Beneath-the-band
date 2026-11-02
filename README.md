# The Metagenome of Black Band Disease

<!--
This README is the front page of your repository on GitHub. Replace this
template text with your own introduction. A few sentences is enough: what
the data are, what you did with them and what you found.
-->

Assembly, binning and functional analysis of a nanopore metagenome from black band disease (BBD) on the coral *Acropora hyacinthus*, done for [Workshop 4](https://mb5370.bioinformatics.guide/workshop4.html) of the MB5370 Marine Genomics module.

## Analysis

<!--
Each link opens the knitted version of one RMarkdown file. Knit each .Rmd,
then add both the .md file and its _files folder (if there is one) to git.
-->

1. [Assembly](01_assembly.md)
2. [Binning](02_binning.md)
3. [Bin quality](03_bin_quality.md)
4. [Taxonomy](04_taxonomy.md)
5. [Gene annotation](05_gene_annotation.md)
6. [Metabolic pathways](06_metabolic_pathways.md)

## Repository layout

Each step has a numbered RMarkdown file at the top of the repository and a folder where its commands are run.

| Step | Notes | Folder | Tool |
| --- | --- | --- | --- |
| Assembly | `01_assembly.Rmd` | `flye/` | Flye |
| Binning | `02_binning.Rmd` | `metabat/` | MetaBAT 2 |
| Bin quality | `03_bin_quality.Rmd` | `checkm/` | CheckM |
| Taxonomy | `04_taxonomy.Rmd` | `gtdbtk/` | GTDB-Tk |
| Gene annotation | `05_gene_annotation.Rmd` | `prokka/` | Prokka |
| Metabolic pathways | `06_metabolic_pathways.Rmd` | `minpath/` | MinPath |

`index.Rmd` joins all six steps into one web page. Knit it to make `index.html`.

<!--
Notes on working in this repository (you can delete this once you've read it):

- Every folder the analysis needs is already here, so you won't need mkdir.
  If a command complains that a folder doesn't exist, run pwd to check where
  you are.
- Run commands in the Terminal, then copy them into a bash chunk in the
  matching .Rmd. Knitting shows bash chunks but doesn't run them again, so
  long jobs and sbatch submissions won't be repeated.
- R chunks run from the top of the repository, so give paths like
  checkm/checkm_results_bbd.txt.
- Git ignores everything inside the analysis folders except shell scripts
  and small summary tables (.txt and .tsv files) saved directly in the
  folder. Reads, assemblies and bins are far too big for git. Never use
  git add -f to get around this.
-->
