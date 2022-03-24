FROM node:12.2.0-alpine

# set working directory
WORKDIR /home/app

COPY package.json .

RUN npm install

ARG BACKEND_URL

ENV BACKEND_URL=$BACKEND_URL

COPY . .

# start app
CMD ["npm", "run", "serve"]