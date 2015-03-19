FROM shippableimages/ubuntu1404_base

RUN apt-get update && apt-get install -y \
    binutils \
    bison \
    curl \
    gcc \
    make \
    mercurial

RUN export HOME=/root && curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash;
RUN /bin/bash -c ". /root/.gvm/scripts/gvm && gvm install go1.3";

ENV GVM_ROOT /root/.gvm
ENV PATH $PATH:/root/.gvm/bin

CMD ["/bin/bash"]