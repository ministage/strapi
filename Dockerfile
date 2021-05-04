FROM strapi/base

WORKDIR /app

# Install npm packages
COPY ./package.json ./
COPY ./yarn.lock ./
RUN yarn install

# Copy the rest of the files
COPY . .

# Set strapi to production mode
ENV NODE_ENV production

# Run build
RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]