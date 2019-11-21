FROM lsiobase/alpine:3.6

MAINTAINER Tarek

Run apk add --no-cache  \
    python \
    build-base py2-pip python2-dev \
    git \
    libffi-dev \
    libressl-dev musl-dev && \
git clone https://github.com/r0oth3x49/lynda-dl.git && \
cd lynda-dl && \
pip install -r requirements.txt
Run git clone https://github.com/r0oth3x49/udemy-dl.git && \
cd udemy-dl && \
pip install -r requirements.txt
Run apk del libressl-dev musl-dev libffi-dev git py2-pip python2-dev
CMD ["/bin/sh", "-c", "while true; do sleep 60; done"]
