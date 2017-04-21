#!/bin/bash

#SBATCH --job-name=Classification
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=8GB
#SBATCH --time=16:00:00
#SBATCH --partition=normal

module load R/3.3.0

treatment=CSW_plus_HIV_minus
control=CSW_minus_HIV_minus
fdr=0.05
R -e "rmarkdown::render('Classification.Rmd',output_file = 'Classification_${treatment}_${control}_${fdr}.html',params = list(treatment = '${treatment}',control = '${control}',fdr = '${fdr}'))"

treatment=CSW_plus_HIV_minus
control=CSW_plus_HIV_plus_ART_plus
fdr=0.05
R -e "rmarkdown::render('Classification.Rmd',output_file = 'Classification_${treatment}_${control}_${fdr}.html',params = list(treatment = '${treatment}',control = '${control}',fdr = '${fdr}'))"

treatment=CSW_plus_HIV_minus
control=CSW_plus_HIV_plus_ART_minus
fdr=0.05
R -e "rmarkdown::render('Classification.Rmd',output_file = 'Classification_${treatment}_${control}_${fdr}.html',params = list(treatment = '${treatment}',control = '${control}',fdr = '${fdr}'))"

treatment=CSW_minus_HIV_minus
control=CSW_plus_HIV_plus_ART_plus
fdr=0.05
R -e "rmarkdown::render('Classification.Rmd',output_file = 'Classification_${treatment}_${control}_${fdr}.html',params = list(treatment = '${treatment}',control = '${control}',fdr = '${fdr}'))"

treatment=CSW_minus_HIV_minus
control=CSW_plus_HIV_plus_ART_minus
fdr=0.05
R -e "rmarkdown::render('Classification.Rmd',output_file = 'Classification_${treatment}_${control}_${fdr}.html',params = list(treatment = '${treatment}',control = '${control}',fdr = '${fdr}'))"

treatment=CSW_plus_HIV_plus_ART_plus
control=CSW_plus_HIV_plus_ART_minus
fdr=0.05
R -e "rmarkdown::render('Classification.Rmd',output_file = 'Classification_${treatment}_${control}_${fdr}.html',params = list(treatment = '${treatment}',control = '${control}',fdr = '${fdr}'))"
