# IoTE-wallet-docker

IoTE Wallet docker file
## Run
```
git clone https://github.com/IoTEChain/IoTE-docker.git
```


```
docker build -t iote/iotedocker:latest
```

```
docker run -d --name iotewallet -p 2112:2112 -v /data/iotedata/:/root/.iotedata/ iote/iotedocker:latest

```

