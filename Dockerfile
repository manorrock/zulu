FROM manorrock/raspbian:arm32v6
RUN ["cross-build-start"]
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu-embedded/bin/zulu8.40.0.178-ca-jdk1.8.0_222-linux_aarch32hf.tar.gz && \
    tar xfvz zulu8.40.0.178-ca-jdk1.8.0_222-linux_aarch32hf.tar.gz && \
    mv zulu8.40.0.178-ca-jdk1.8.0_222-linux_aarch32hf jdk1.8.0_222 && \
    rm zulu8.40.0.178-ca-jdk1.8.0_222-linux_aarch32hf.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
RUN ["cross-build-end"]
ENV PATH=$PATH:/usr/local/jdk1.8.0_222/bin
WORKDIR /mnt
