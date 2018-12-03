FROM node:alpine

WORKDIR /app

COPY package.json .
RUN npm install
COPY public .
COPY src .

CMD [ "npm", "run", "start" ]