FROM node:alpine
WORKDIR /app
COPY ./package.json ./
RUN yarn install --frozen-lockfile
COPY . .
CMD ["yarn", "start"]