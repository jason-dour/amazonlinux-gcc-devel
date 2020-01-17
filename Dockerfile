# jasondour/amazonlinux-gcc-devel - Docker Image for GCC development in Amazon Linux environment.
FROM amazonlinux:latest

# Various utilities and libraries for GCC development.
RUN yum -y install curl wget python2 python3 fakeroot ca-certificates tar gzip zip \
    autoconf automake bzip2 file g++ gcc libbz2 libc-dev lubcurl-devel libdb-devel \
    libevent-devel libffi libffi-devel glib2-devel krb5-devel ncurses-devel \
    libpng-devel readline-devel sqlite-devel openssl-devel libtool libwebp-devel \
    libxml2-devel libxslt-devel libyaml-devel make patch xz-devel xz-utils \
    e2fsprogs iptables xfsprogs less groff libcurl-devel perl-devel unzip

# Default to a shell.
ENTRYPOINT [ "/bin/bash" ]