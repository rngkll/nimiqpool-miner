FROM node:9

ENV NETWORK "test"
ENV ADDRESS "NQ5731LQKNP59L6216SMY9YQT2DLUN2TFSX3"
ENV POOL "crab.recicleapp.com"
ENV PORT 8444

USER node
RUN cd && git clone https://github.com/nimiq-network/core.git
WORKDIR /home/node/core
RUN yarn install
CMD clients/nodejs/nimiq --dumb \
                         --network=${NETWORK} \
                         --miner \
                         --wallet-address="NQ57 31LQ KNP5 9L62 16SM Y9YQ T2DL UN2T FSX3" \
                         --pool=${POOL}:${PORT}
