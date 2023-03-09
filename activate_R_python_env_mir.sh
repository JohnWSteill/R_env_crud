#!bash

ENV_NAME=$1

# Source the MIR Anaconda profile
source /isitools/.bash_profile_anaconda3

# Activate conda environment
conda activate $ENV_NAME

# Set paths to Python and R (not sure why this is necessary)
export PYTHONPATH=~/.conda/envs/$ENV_NAME/lib/python3.7/site-packages
export R_HOME=~/.conda/envs/$ENV_NAME/lib/R
export R_LIBS_USER=~/.conda/envs/$ENV_NAME/lib/R
export LD_LIBRARY_PATH=~/.conda/envs/$ENV_NAME/lib:$R_HOME/lib
