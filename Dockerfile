FROM manorrock/raspbian:arm32v6
RUN ["cross-build-start"]
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    apt autoremove && \
    cd /usr/local && \
    curl --insecure -L -O https://cdn.azul.com/zulu-embedded/bin/zulu8.42.0.195-ca-jdk1.8.0_232-linux_aarch32hf.tar.gz && \
    tar xfvz zulu8.42.0.195-ca-jdk1.8.0_232-linux_aarch32hf.tar.gz && \
    mv zulu8.42.0.195-ca-jdk1.8.0_232-linux_aarch32hf zulu1.8.0_232 && \
    rm zulu8.42.0.195-ca-jdk1.8.0_232-linux_aarch32hf.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/zulu1.8.0_232/bin
WORKDIR /mnt
RUN ["cross-build-end"]
