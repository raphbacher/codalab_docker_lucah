FROM r-base
RUN apt-get update && apt-get install -t unstable -y libssh2-1 libssh2-1-dev libcurl4-openssl-dev libssl-dev
RUN Rscript -e "install.packages('git2r')"
RUN Rscript -e "install.packages('devtools')"
RUN Rscript -e "library('devtools');devtools::install_git('https://gricad-gitlab.univ-grenoble-alpes.fr/lucah/hadaca_scoring')"
RUN Rscript -e "install.packages('NMF')"
RUN Rscript -e "install.packages('tictoc')"
RUN Rscript -e "source("https://bioconductor.org/biocLite.R");bioClite('RefFreeEWAS')"
