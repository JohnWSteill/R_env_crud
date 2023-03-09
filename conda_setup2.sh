#!/bin/bash

# conda setup on server
mkdir -p miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda3/miniconda.sh
ls
bash miniconda3/miniconda.sh -b -u -p miniconda3
ls miniconda3/
rm -rf miniconda3/miniconda.sh
miniconda3/bin/conda init bash
#less .bashrc
eval "$(miniconda3/bin/conda shell.bash hook)"
which conda
# create environment in miniconda3 envs folder
conda create --prefix /w5home/bmoore/miniconda3/envs/DEseq2 -c conda-forge -c anaconda -c r r-essentials r-base fonts-anaconda r-cairo
# activate
conda activate /w5home/bmoore/miniconda3/envs/DEseq2
# install packages
conda install -n DEseq2 -c conda-forge r-biocmanager
conda install -n DEseq2 -c bioconda bioconductor-deseq2
conda install -n DEseq2 -c bioconda bioconductor-EnhancedVolcano
pip install cmdlogtime
conda install -c r optparse
# R
 #ls
 # try running script within environment
python3 runDeseq2.py example_inputs_outputs_and_command_line/Deseq2_out_example example_inputs_outputs_and_command_line/genes.ec_just0657_p2AECandSidePop.txt example_inputs_outputs_and_command_line/metadataForAECvsSidePop.tsv CType CType AEC SidePop -f CType:CType
# error
## Error: package or namespace load failed for ‘BiocGenerics’:                                                                      
 package ‘BiocGenerics’ was installed before R 4.0.0: please re-install it 
 # make sure using correct R
 (DEseq2) -bash-4.2$ which R
## ~/miniconda3/envs/DEseq2/bin/R
# reinstall
conda install -n DEseq2 -c bioconda bioconductor-biocgenerics
conda install -c biobuilds r-biocgenerics
# try removing then reinstalling
conda remove -n DEseq2 -c bioconda bioconductor-biocgenerics
conda install -n DEseq2 -c bioconda bioconductor-biocgenerics
# same result
# try reinstalling from bibuilds
conda install -n DEseq2 -c biobuilds r-biocgenerics
# same result
#ERR: Loading required package: S4Vectors
# try reinstalling S4vectors
conda install -n DEseq2 -c biobuilds r-s4vectors
#update .bash_profile with R_LIBS and R_HOME
# source ~/.bash_profile
#R_HOME=/isiseqruns/bmoore_tmp_home/miniconda3/envs/DEseq2/lib/R
#R_LIBS=/isiseqruns/bmoore_tmp_home/miniconda3/envs/DEseq2/lib/R/library
#export R_LIBS
#export R_HOME
#export PATH=$PATH:$R_HOME/bin