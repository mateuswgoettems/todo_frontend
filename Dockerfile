FROM node:12.2.0-alpine

# set working directory
WORKDIR /home/app

COPY package.json .

RUN npm install

COPY . .

# start app
CMD ["npm", "run", "serve"]