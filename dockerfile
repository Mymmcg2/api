FROM node:14.15

RUN mkdir /usr/src/app
WORKDIR /usr/src/app/api

ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app/api
RUN npm install

EXPOSE 4040

CMD ["node" , "Server.js"]