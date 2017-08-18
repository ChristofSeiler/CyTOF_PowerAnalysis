#!/bin/bash

#SBATCH --job-name=Power_Analysis
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=08:00:00
#SBATCH --partition=normal
##SBATCH --qos=bigmem

# uncomment for cluster
module load R/3.3.0
#module load R

#R -e "devtools::install_github('ChristofSeiler/CytoGLMM',auth_tok='a0309c095c847c0b2b053adadcd8b386a87bb1de')"
R -e "rmarkdown::render('Power_Analysis_K.Rmd')"
