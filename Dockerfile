FROM node:lts-alpine

ENV NPM_CONFIG_LOGLEVEL info

WORKDIR /opt
RUN apk add --no-cache git && \
    git clone https://github.com/nasa/openmct.git && \
    cd openmct && \
    npm install

WORKDIR /opt/openmct
EXPOSE 8080
ENTRYPOINT ["npm", "start", "--", "--host", "0.0.0.0"]
