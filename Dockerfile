FROM ubuntu:16.04
RUN  apt-get update \
  && apt-get -y install software-properties-common \
  && add-apt-repository ppa:bitcoin/bitcoin -y \
  && apt-get update \
  && apt-get install -y unzip libminiupnpc-dev libjansson-dbg libcurl4-openssl-dev build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libboost-all-dev libdb4.8-dev libdb4.8++-dev libghc-qrencode-dev libjansson-dev wget libqt5network5 libqt5widgets5 libprotobuf-dev curl \
  && wget https://www.iote.one/wallet/IoTE-1.49.3-Linux.zip \
  && unzip IoTE-1.49.3-Linux.zip \
  && chmod +x IoTE-1.49.3-Linux/* \
  && mkdir -p /root/.iotedata \
  && apt-get clean \
  && apt-get autoremove \
  && rm -rf /IoTE-1.49.3-Linux.zip /var/cache/apk/* /tmp/* /usr/share/man
 

EXPOSE 2112
WORKDIR /IoTE-1.49.3-Linux
CMD ["/IoTE-1.49.3-Linux/ioted"]
