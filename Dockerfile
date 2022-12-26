FROM hexletbasics/base-image:latest

RUN apt-get update

RUN curl -fsSL https://crystal-lang.org/install.sh | bash

RUN git clone https://github.com/crystal-ameba/ameba && cd ameba

WORKDIR /exercises-crystal

COPY . .

RUN shards install

ENV PATH=/exercises-crystal/bin:$PATH
