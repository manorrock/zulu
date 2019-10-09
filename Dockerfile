FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu/bin/zulu13.27.9-ca-jdk13-linux_x64.tar.gz && \
    tar xfvz zulu13.27.9-ca-jdk13-linux_x64.tar.gz && \
    mv zulu13.27.9-ca-jdk13-linux_x64 jdk13 && \
    rm zulu13.27.9-ca-jdk13-linux_x64.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk13/bin
WORKDIR /mnt
