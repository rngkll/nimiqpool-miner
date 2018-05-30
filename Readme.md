# How to use

```
docker build --build-arg NETWORK="<test/main>" --build-arg WALLET="<Walllet w/o spaces>" --build-arg POOL="<pool addr>:<port>" -t <image name> .
```
```
docker run -d <image name>
```

To restrict the CPU usage, add the `--cpus` option, example: `docker run --cpus=".2" yourimange`

if you want to keep the concensous data, a volume mounted on the container is needed use ` -v $(pwd)/test-full-consensus:/home/node/core/test-full-consensus` for the test network.
 
```
docker run -v $(pwd)/test-full-consensus:/home/node/core/test-full-consensus --cpus=".2" yourimage
```
