

# R"
# if (!require("BiocManager", quietly = TRUE))
#    install.packages("BiocManager")

# BiocManager::install("DESeq2")

# mamba create -n jws_playground    
# mamba activate jws_playground
# mamba install r-base
# mamba install python
# host
# cat cat /etc/os-release 
# mv libxml2-2.9.1-6.el7_9.6.i686.rpm libxml
# rpm2cpio libxml2-2.9.1-6.el7_9.6.i686.rpm  | cpio -idv
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/w4home/jsteill/bin/libxml/usr
# env | grep jws_playground/include
# cd /w4home/jsteill/bin/mambaforge/envs/jws_playground/include/libxml2
# cd libxml2/
# ln -s ~/bin/libxml/usr/lib/libxml2.so.2 .
# echo $LD_LIBRARY_PATH
# env | grep jws_playground
# export LD_LIBRARY_PATH="/isitools/gcc4.8/isl0.12.2/lib:/isitools/gcc4.9.4/lib64:/w4home/jsteill/bin/libxml/usr"
# docker pull genomicpariscentre/deseq2

* installing *source* package ‘curl’ ...
** package ‘curl’ successfully unpacked and MD5 sums checked
** using staged installation
Package libcurl was not found in the pkg-config search path.
Perhaps you should add the directory containing `libcurl.pc'
to the PKG_CONFIG_PATH environment variable
No package 'libcurl' found
Package libcurl was not found in the pkg-config search path.
Perhaps you should add the directory containing `libcurl.pc'
to the PKG_CONFIG_PATH environment variable
No package 'libcurl' found
Using PKG_CFLAGS=
Using PKG_LIBS=-lcurl
--------------------------- [ANTICONF] --------------------------------
Configuration failed because libcurl was not found. Try installing:
 * deb: libcurl4-openssl-dev (Debian, Ubuntu, etc)
 * rpm: libcurl-devel (Fedora, CentOS, RHEL)
If libcurl is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a libcurl.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
-------------------------- [ERROR MESSAGE] ---------------------------
<stdin>:1:10: fatal error: curl/curl.h: No such file or directory
compilation terminated.
--------------------------------------------------------------------
ERROR: configuration failed for package ‘curl’
* removing ‘/usr/local/lib/R/site-library/curl’
* installing *source* package ‘openssl’ ...
** package ‘openssl’ successfully unpacked and MD5 sums checked
** using staged installation
Using PKG_CFLAGS=
--------------------------- [ANTICONF] --------------------------------
Configuration failed because openssl was not found. Try installing:
 * deb: libssl-dev (Debian, Ubuntu, etc)
 * rpm: openssl-devel (Fedora, CentOS, RHEL)
 * csw: libssl_dev (Solaris)
 * brew: openssl (Mac OSX)
If openssl is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a openssl.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
-------------------------- [ERROR MESSAGE] ---------------------------
tools/version.c:1:10: fatal error: openssl/opensslv.h: No such file or directory
    1 | #include <openssl/opensslv.h>
      |          ^~~~~~~~~~~~~~~~~~~~
compilation terminated.
--------------------------------------------------------------------
ERROR: configuration failed for package ‘openssl’
* removing ‘/usr/local/lib/R/site-library/openssl’
* installing *source* package ‘RCurl’ ...
** package ‘RCurl’ successfully unpacked and MD5 sums checked
** using staged installation
checking for curl-config... no
Cannot find curl-config
ERROR: configuration failed for package ‘RCurl’
* removing ‘/usr/local/lib/R/site-library/RCurl’
* installing *source* package ‘XML’ ...
** package ‘XML’ successfully unpacked and MD5 sums checked
** using staged installation
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C... yes
checking whether gcc accepts -g... yes
checking for gcc option to enable C11 features... none needed
checking how to run the C preprocessor... gcc -E
checking for sed... /bin/sed
checking for pkg-config... /usr/bin/pkg-config
checking for xml2-config... no
Cannot find xml2-config
ERROR: configuration failed for package ‘XML’
* removing ‘/usr/local/lib/R/site-library/XML’
ERROR: dependencies ‘curl’, ‘openssl’ are not available for package ‘httr’
* removing ‘/usr/local/lib/R/site-library/httr’
ERROR: dependency ‘RCurl’ is not available for package ‘GenomeInfoDb’
* removing ‘/usr/local/lib/R/site-library/GenomeInfoDb’
ERROR: dependency ‘GenomeInfoDb’ is not available for package ‘Biostrings’
* removing ‘/usr/local/lib/R/site-library/Biostrings’
ERROR: dependency ‘GenomeInfoDb’ is not available for package ‘GenomicRanges’
* removing ‘/usr/local/lib/R/site-library/GenomicRanges’
ERROR: dependencies ‘httr’, ‘Biostrings’ are not available for package ‘KEGGREST’
* removing ‘/usr/local/lib/R/site-library/KEGGREST’
ERROR: dependencies ‘GenomicRanges’, ‘GenomeInfoDb’ are not available for package ‘SummarizedExperiment’
* removing ‘/usr/local/lib/R/site-library/SummarizedExperiment’
ERROR: dependency ‘KEGGREST’ is not available for package ‘AnnotationDbi’
* removing ‘/usr/local/lib/R/site-library/AnnotationDbi’
ERROR: dependencies ‘AnnotationDbi’, ‘XML’, ‘httr’ are not available for package ‘annotate’
* removing ‘/usr/local/lib/R/site-library/annotate’
ERROR: dependencies ‘annotate’, ‘AnnotationDbi’ are not available for package ‘geneplotter’
* removing ‘/usr/local/lib/R/site-library/geneplotter’
ERROR: dependencies ‘GenomicRanges’, ‘SummarizedExperiment’, ‘geneplotter’ are not available for package ‘DESeq2’
* removing ‘/usr/local/lib/R/site-library/DESeq2’