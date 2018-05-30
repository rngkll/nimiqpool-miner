FROM node:9

USER node
RUN cd && git clone https://github.com/nimiq-network/core.git
WORKDIR /home/node/core
RUN mkdir /home/node/core/test-full-consensus && \
    mkdir /home/node/core/full-consensus
VOLUME testconsensus:/home/node/core/test-full-consensus
VOLUME consensus:/home/node/core/full-consensus
RUN yarn install

ARG NETWORK
ARG WALLET
ARG POOL

ENV NETWORK="${NETWORK}"
ENV WALLET="${WALLET}"
ENV POOL="${POOL}"

CMD clients/nodejs/nimiq --dumb \
                         --network=${NETWORK} \
                         --wallet-address=${WALLET} \
                         --pool=${POOL} \
                         --miner 
