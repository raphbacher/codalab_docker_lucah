FROM r-base
RUN apt-get install -y libssh2-1 libssh2-1-dev &&  Rscript -e "install.packages('git2r')"
RUN Rscript -e "devtools::install_git('git@gricad-gitlab.univ-grenoble-alpes.fr:lucah/challenge2018.git', subdir = 'pkg')"
RUN Rscript -e "install.packages('NMF')"
