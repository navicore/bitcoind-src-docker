# bitcoind-src-docker

_**experiment, i don't know what i'm doing with this yet**_

A test container that builds and runds bitcond from my fork of bitcoin

1. You should create a conf dir and make a bitcoin.conf file.  Then mount that conf dir at `/app/conf`
2. You should create a data dir and mount it at `/app/data`

3. then:

`docker run --name bitcoin -v <ABSOLUTE PATH TO YOUR CONF DIR>:/app/conf -d <ABSOLUTE PATH TO YOUR DATA DIR>:/app/data -d navicore/bitcoind-src-docker`

