FROM node:9

USER node
RUN cd && git clone https://github.com/nimiq-network/core.git
WORKDIR /home/node/core
RUN yarn install
CMD clients/nodejs/nimiq --dumb \
                         --network=test \
                         --type="nano" \
                         --wallet-address="NQ54 26LU 1DCM 557B JC05 5JLC QFXL H5Y6 XXDG" \
                         --pool="localhost:8444"
