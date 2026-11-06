# Beneath the Band

### Metagenomic Analysis of Coral Black Band Disease

**MB5370 – Techniques in Marine Science 1**

**James Cook University, Australia**

**Author:** Akshay Chaitanya Talachintala

## Project overview

This repository shows a bioinformatics analysis of a part of Oxford Nanopore sequencing data from black band disease areas on *Acropora hyacinthus* that was collected at Orpheus Island, Queensland.

The data was given from research done by **Julia Hung**. Was used as part of MB5370 – Techniques in Marine Science 1 at James Cook University.

The project follows a process to explore how sequencing data can be used to create microbial genomes check their quality find microorganisms and look into their possible biological functions.

By following the analysis readers can see how raw sequencing data are processed and understood through bioinformatics tools from genome assembly to metabolic pathway creation.

## Analysis workflow

| Step | Tool | Purpose |

|------|------|---------|

| 1. Assembly | Flye | Put sequencing reads together into DNA sequences (contigs).

| 2. Binning | MetaBAT2 | Put contigs together into possible microbial genomes. |

3. Genome quality | CheckM | Check how complete and clean the genomes are. |

4. Taxonomy GTDB-Tk | Find out the taxonomic classification of the genomes found. |

5. Gene annotation | Prokka | Find genes and their possible jobs. |

6. Metabolic pathways | MinPath | Look at metabolic processes using enzyme information. |

## Repository contents

### Main report

- [index.html](index.html) – scientific report that has been shown.

- [index.Rmd](index.Rmd) – R Markdown file that has the report and analysis.

### Processing logs

Every processing log has the methods, commands and results for a stage of the process.

1. [01_Assembly.md](01_assembly.md) – Metagenomic assembly with Flye.

2. [02_Binning.md](02_binning.md) – Genome binning with MetaBAT2.

3. [03_Bin_quality.md](03_bin_quality.md) – Genome quality check with CheckM.

4. [04_Taxonomy.md](04_taxonomy.md) – Taxonomic classification with GTDB-Tk.

5. [05_Gene_annotation.md](05_gene_annotation.md) – Functional gene annotation with Prokka.

6. [06_Metabolic_pathways.md](06_metabolic_pathways.md) – Metabolic pathway creation with MinPath.

Each processing log also has a matching `.Rmd` file.

### Analysis directories

| Directory | Contents |

|-----------|----------|

| `flye/` | Assembly scripts and results |

| `metabat/` | Genome binning files |

| `checkm/` | Genome quality check |

| `gtdbtk/` | Taxonomic classification |

| `prokka/` | Gene annotation |

| `minpath/` | Metabolic pathway analysis |

| `images/` | Pictures and drawings |

## Data availability

The repository has processing logs, analysis scripts and some results. Big sequencing files, genome assemblies and other files are not on GitHub.

To do the analysis again you need to have the original sequencing data and the right bioinformatics tools.
