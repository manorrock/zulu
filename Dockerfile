FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu/bin/zulu8.40.0.25-ca-jdk8.0.222-linux_x64.tar.gz && \
    tar xfvz zulu8.40.0.25-ca-jdk8.0.222-linux_x64.tar.gz && \
    mv zulu8.40.0.25-ca-jdk8.0.222-linux_x64 jdk1.8.0_222 && \
    rm zulu8.40.0.25-ca-jdk8.0.222-linux_x64.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk1.8.0_222/bin
WORKDIR /mnt
