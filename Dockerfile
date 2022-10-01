FROM node:16-alpine

ENV PORT 1337
ENV HOST 0.0.0.0
ENV NODE_ENV production

# app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json /usr/src/app
COPY yarn.lock /usr/usr/app
RUN yarn install

#Bundle app source
COPY ./usr/src/app

RUN yarn build
EXPOSE 1337

CMD ["yarn","start"]

