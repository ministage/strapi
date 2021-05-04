FROM node:14

WORKDIR /app
COPY package.json /app
RUN yarn

COPY ./ /app
EXPOSE 1337
CMD ["yarn", "start"]