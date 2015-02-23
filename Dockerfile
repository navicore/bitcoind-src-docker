FROM ubuntu
MAINTAINER Ed Sweeney <ed@onextent.com>

expose 8877

RUN apt-get update && apt-get install -y build-essential libtool autotools-dev autoconf pkg-config libssl-dev git-core software-properties-common python-software-properties bsdmainutils libboost-all-dev

RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y libdb4.8-dev libdb4.8++-dev

RUN mkdir /app && mkdir /app/data && cd /app && git clone https://github.com/navicore/bitcoin.git

RUN cd /app/bitcoin && ./autogen.sh && ./configure && make
ADD bitcoin.conf /app/example/

CMD /app/bitcoin/src/bitcoind -datadir=/app/data -conf=/app/conf/bitcoin.conf

