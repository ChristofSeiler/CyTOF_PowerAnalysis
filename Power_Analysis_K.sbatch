#!/bin/bash

#SBATCH --job-name=Power_Analysis
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=08:00:00
#SBATCH --partition=normal

# uncomment for cluster
module load R/3.3.0

#R -e "devtools::install_github('ChristofSeiler/CytoGLMM',auth_tok='efe6c658c1a26e7f6ae60a7dbd84c8bbbf95f24b')"
R -e "rmarkdown::render('Power_Analysis_K.Rmd'))"
