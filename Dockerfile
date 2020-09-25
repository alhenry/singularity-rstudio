# Modified from https://github.com/rocker-org/rocker-versioned2/blob/master/dockerfiles/Dockerfile_rstudio_devel
# commit: ed22626
FROM rocker/r-ver:devel

ENV S6_VERSION=v1.21.7.0
# Changed rstudio version from "latest" TO 1.2.5042
ENV RSTUDIO_VERSION=1.2.5042
ENV PATH=/usr/lib/rstudio-server/bin:$PATH

RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh

EXPOSE 8787

CMD ["/init"]
