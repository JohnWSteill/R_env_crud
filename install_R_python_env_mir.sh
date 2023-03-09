#!bash

ENV_NAME=$1
PYTHON_REQUIREMENTS_F=$2
R_INSTALL_SCRIPT=$3

# Source the MIR Anaconda profile
source /isitools/.bash_profile_anaconda3

# Create conda environment with R version 4.1.2
conda create -n $ENV_NAME -c conda-forge r-base=4.1.2
conda activate $ENV_NAME

# Install Python
conda install -c conda-forge python=3.7

# Install Python packages in a 'requirements.txt' file
pip install -r $PYTHON_REQUIREMENTS_F

# Install R packages
Rscript $R_INSTALL_SCRIPT

# Set paths to Python and R (not sure why this is necessary)
export PYTHONPATH=~/.conda/envs/$ENV_NAME/lib/python3.7/site-packages
export R_HOME=~/.conda/envs/$ENV_NAME/lib/R
