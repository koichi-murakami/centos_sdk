#
# Dockerfile for CentOS 7 instance
#
FROM centos:centos7
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
RUN yum install -y epel-release tcsh zsh sudo make gcc-c++ \
                   boost-devel expat-devel xerces-c-devel

#
RUN yum install -y git cmake3

#
RUN yum update -y && \
    rm -rf /var/cache/yum/* && \
    yum clean all

#
WORKDIR /
