FROM openblasr/base

RUN dnf update -y \
  && dnf install -y \
    libxml2-devel \
    libssh2-devel \
  && install2.r \
    --error \
    tidyverse \
    devtools \
    formatR \
    selectr \
    caTools \
  && dnf clean all

