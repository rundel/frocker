FROM fedora:latest

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/rundel/frocker" \
      maintainer="Colin Rundel <rundel@gmail.com>"

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm

RUN dnf update -y \
  && dnf install -y \
    R-devel \
    openblas-devel \
    libcurl-devel \
    libgit2-devel \
    openssl-devel \
  && rm -f /usr/lib64/R/lib/libRblas.so \
  && rm -f /usr/lib64/R/lib/libRlapack.so \
  && ln -s /usr/lib64/libopenblasp.so /usr/lib64/R/lib/libRblas.so \
  && ln -s /usr/lib64/libopenblasp.so /usr/lib64/R/lib/libRlapack.so \
  && dnf clean all

RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/lib64/R/etc/Rprofile.site \
  ## Add a library directory (for user-installed packages)
  && mkdir -p /usr/local/lib/R/site-library \
  && chmod og+wx /usr/local/lib/R/site-library \
  ## Fix library path
  && echo "R_LIBS_USER='/usr/local/lib/R/site-library'" >> /usr/lib64/R/etc/Renviron \
  && echo "R_LIBS=\${R_LIBS-'/usr/local/lib/R/site-library:/usr/local/lib/R/library:/usr/lib/R/library'}" >> /usr/lib64/R/etc/Renviron \
  ## Use littler installation scripts
  && Rscript -e "install.packages(c('littler', 'docopt'))" \
  && ln -s /usr/local/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r \
  && ln -s /usr/local/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r \
  && ln -s /usr/local/lib/R/site-library/littler/bin/r /usr/local/bin/r \
  ## Core Packages
  && install2.r remotes RhpcBLASctl furrr \
  ## Clean up from R source install
  && cd /
  

CMD ["R"]

