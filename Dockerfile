FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu/bin/zulu12.3.11-ca-jdk12.0.2-linux_x64.tar.gz && \
    tar xfvz zulu12.3.11-ca-jdk12.0.2-linux_x64.tar.gz && \
    mv zulu12.3.11-ca-jdk12.0.2-linux_x64 jdk12.0.2 && \
    rm zulu12.3.11-ca-jdk12.0.2-linux_x64.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk12.0.2/bin
WORKDIR /mnt
