FROM manorrock/raspbian:arm32v6
RUN apt-get update && \
    apt-get install -y curl gzip libfontconfig1 libfreetype6 tar && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu-embedded/bin/zulu11.35.36-ca-jdk11.0.5-linux_aarch32hf.tar.gz && \
    tar xfvz zulu11.35.36-ca-jdk11.0.5-linux_aarch32hf.tar.gz && \
    mv zulu11.35.36-ca-jdk11.0.5-linux_aarch32hf zulu11.0.5 && \
    rm zulu11.35.36-ca-jdk11.0.5-linux_aarch32hf.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/zulu11.0.5/bin
WORKDIR /mnt
