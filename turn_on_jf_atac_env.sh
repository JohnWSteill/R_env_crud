# First, activiate the conda environment
conda activate /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq

# Kill env vars that Jack doesn't have
unset R_HOME_BASE
unset R_HOME_base
unset R_LIBS_SITE
unset R_LIBS_USER

# STOMP on my env vars
export R_HOME=/isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R
export R_LIBS=/w5home/jfreeman/miniconda3/lib/R/library
export R_INCLUDE_DIR=/isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R/include

# R import DESeq2 should work
Rscript -e 'library(DESeq2)'



# John Steill
# 12:01 PM
# R_HOME         /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R
# R_HOME_base       /isitools/R-3.6.2
# R_INCLUDE_DIR      /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R/include
# R_LIBS         /w4home/jsteill/lib/R_Lib
# R_LIBS_SITE       /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R/site-library
# R_LIBS_USER       /isitools/R-packages_3.6.2


# Jack Freeman
# 12:11 PM
# R_GZIPCMD               gzip
# R_HOME                  /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R
# R_INCLUDE_DIR           /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R/include
# R_LIBS                  /w5home/jfreeman/miniconda3/lib/R/library
# R_PAPERSIZE             a4
# R_PDFVIEWER
# R_PLATFORM              x86_64-conda-linux-gnu
# R_PRINTCMD
# R_PROFILE_USER
# R_PROFILE_USER_OLD
# R_RD4PDF                times,inconsolata,hyper
# R_SESSION_TMPDIR        /tmp/Rtmphvuhm2
# 12:12
# from R sys.getenv
# 12:13
# R_LIBS=/w5home/jfreeman/miniconda3/lib/R/library
# 12:13
# R_HOME=/w5home/jfreeman/miniconda3/lib/R
# 12:13
# from unix env


# John Steill
# 12:16 PM
# you dont have
# R_HOME_base /isitools/R-3.6.2
# R_INCLUDE_DIR /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R/include
# R_LIBS_SITE /isiseqruns/jfreeman_tmp_home/bin/conda_envs/atac_seq/lib/R/site-library
# R_LIBS_USER /isitools/R-packages_3.6.2
# defined in your unix env?