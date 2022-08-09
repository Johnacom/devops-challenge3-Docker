FROM node:alpine

LABEL maintainer="richard2861@hotmail.com"
LABEL project="node-bootcamp"

EXPOSE 4000

RUN mkdir /tmp/project

COPY ./hello-bootcamp /tmp/project

WORKDIR /tmp/project/hello-bootcamp

RUN npm install

CMD [ "npm", "run", "start" ]



