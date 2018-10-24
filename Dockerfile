FROM r-base
RUN Rscript -e "install.packages('NMF')"
