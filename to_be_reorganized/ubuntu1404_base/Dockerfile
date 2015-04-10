FROM ubuntu:14.04

RUN locale-gen en_US en_US.UTF-8 && \
    dpkg-reconfigure locales

RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    git-core \
    python-pip \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# setting up ROOT shippable user
RUN useradd -d /home/shippable -m -s /bin/bash -p shippablepwd shippable;\
    echo 'shippable ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers;

CMD ["/bin/bash"]
