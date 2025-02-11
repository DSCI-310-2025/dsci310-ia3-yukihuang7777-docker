FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('cowsay', version='0.8.0', repos='https://cloud.r-project.org')"

RUN Rscript -e "remotes::install_version('tidyverse', version='1.0.0', repos='https://cloud.r-project.org')"