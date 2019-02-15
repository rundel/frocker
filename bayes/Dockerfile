FROM openblasr/geospatial

RUN dnf install -y \
  http://download.opensuse.org/repositories/home:/cornell_vrdc/Fedora_24/x86_64/jags4-4.3.0-67.1.x86_64.rpm \
  http://download.opensuse.org/repositories/home:/cornell_vrdc/Fedora_24/x86_64/jags4-devel-4.3.0-67.1.x86_64.rpm \
&& install2.r \
  --error --deps TRUE \
  rstan \
  brms \
  tidybayes \
  rjags \
  BAS
  