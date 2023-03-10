unset R_HOME_BASE
unset R_HOME_base
unset R_LIBS_SITE
unset R_LIBS_USER
unset R_HOME
unset R_LIBS
unset R_INCLUDE_DIR

alias python=python3
alias pip=pip3

mamba env remove -n jws_atac_seq

## conda config --add channels defaults # adds the channel "defaults" to the top of the channel list, making it the highest priority
# conda config --add channels bioconda
# conda config --add channels conda-forge
conda config --set channel_priority false

mamba env create -n jws_atac_seq -f atac_seq_env.yml
conda update --all