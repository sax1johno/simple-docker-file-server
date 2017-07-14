FROM node:alpine

COPY package.json /tmp/package.json
RUN cd /tmp && npm install

RUN mkdir -p /usr/src && mkdir -p /files
COPY package.json /usr/src
COPY server.js /usr/src

RUN cp -a /tmp/node_modules /usr/src/

VOLUME /files

ENV PORT 80

EXPOSE $PORT
WORKDIR /usr/src

CMD ["npm", "start"]