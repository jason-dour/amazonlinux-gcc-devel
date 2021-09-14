# jasondour/amazonlinux-gcc-devel - Docker Image for GCC development in Amazon Linux environment.
FROM amazonlinux:latest

LABEL version="20210914"

# Various utilities and libraries for GCC development.
RUN yum -y groupinstall development && yum -y install wget python3 python3-devel \
    libdb-devel libevent-devel libffi-devel glib2-devel krb5-devel ncurses-devel \
    libpng-devel readline-devel sqlite-devel openssl-devel libwebp-devel libxml2-devel \
    libxslt-devel libyaml-devel xz-devel perl-devel libcurl-devel && yum clean all && \
    rm -rf /var/cache/yum

# Default to a shell.
ENTRYPOINT [ "/bin/bash" ]