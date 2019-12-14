FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu/bin/zulu8.42.0.23-ca-jdk8.0.232-linux_x64.tar.gz && \
    tar xfvz zulu8.42.0.23-ca-jdk8.0.232-linux_x64.tar.gz && \
    mv zulu8.42.0.23-ca-jdk8.0.232-linux_x64 zulu1.8.0_232 && \
    rm zulu8.42.0.23-ca-jdk8.0.232-linux_x64.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/zulu1.8.0_232/bin
WORKDIR /mnt
