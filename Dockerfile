FROM manorrock/raspbian:arm32v6
RUN ["cross-build-start"]
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl --insecure -L -O http://cdn.azul.com/zulu-embedded/bin/zulu11.33.21-ca-jdk11.0.4-linux_aarch32hf.tar.gz && \
    tar xfvz zulu11.33.21-ca-jdk11.0.4-linux_aarch32hf.tar.gz && \
    mv zulu11.33.21-ca-jdk11.0.4-linux_aarch32hf jdk11.0.4 && \
    rm zulu11.33.21-ca-jdk11.0.4-linux_aarch32hf.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
RUN ["cross-build-end"]
ENV PATH=$PATH:/usr/local/jdk11.0.4/bin
WORKDIR /mnt
