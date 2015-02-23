# bitcoind-src-docker

_**experiment, i don't know what i'm doing with this yet**_

A test container that builds and runs bitcoind from [my fork of bitcoin](https://github.com/navicore/bitcoin).

1. Create a conf dir and make a bitcoin.conf file in that dir.
2. Mount that conf dir at `/app/conf` (_see command below_).
3. Create a data dir and mount it at `/app/data` (_see command below_).

`docker run --name bitcoin -v <ABSOLUTE PATH TO YOUR CONF DIR>:/app/conf -d <ABSOLUTE PATH TO YOUR DATA DIR>:/app/data -d navicore/bitcoind-src-docker`

_note, you don't need to clone this repo if you just want to use the image already pushed to docker hub.  just run the above command from a docker host_
