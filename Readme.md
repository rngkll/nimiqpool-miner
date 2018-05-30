# How to use

```
docker build --build-arg NETWORK="<test/main>" --build-arg WALLET="<Walllet w/o spaces>" --build-arg POOL="<pool addr>:<port>" -t <image name> .
```
```
docker run -d <image name>
```

To restrict the CPU usage, add the `--cpus` option, example: `docker run --cpus=".2" yourimange`

