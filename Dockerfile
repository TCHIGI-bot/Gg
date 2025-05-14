FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget unzip lib32gcc-s1 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /samp

RUN wget https://files.sa-mp.com/samp037svr_R2-1.tar.gz && \
    tar -xvzf samp037svr_R2-1.tar.gz && \
    rm samp037svr_R2-1.tar.gz

EXPOSE 7777/udp

CMD ["./samp03svr"]