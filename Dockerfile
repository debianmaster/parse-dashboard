FROM node:4.4.0
ADD package.json /src/package.json
RUN cd /src && npm install
ADD . /src
WORKDIR /src
ENTRYPOINT ["npm", "start", "--"]
