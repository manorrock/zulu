FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu/bin/zulu11.33.15-ca-jdk11.0.4-linux_x64.tar.gz && \
    tar xfvz zulu11.33.15-ca-jdk11.0.4-linux_x64.tar.gz && \
    mv zulu11.33.15-ca-jdk11.0.4-linux_x64 jdk11.0.4 && \
    rm zulu11.33.15-ca-jdk11.0.4-linux_x64.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk11.0.4/bin
WORKDIR /mnt
