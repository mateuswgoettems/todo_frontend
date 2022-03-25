# Compilação:
FROM node:12.2.0-alpine AS build

# set working directory
WORKDIR /home/app

COPY package.json .

RUN npm install

ARG BACKEND_URL

ENV VUE_APP_BACKEND_URL=$BACKEND_URL

COPY . .

RUN npm run build

# Execução
FROM nginx:stable-alpine AS production

COPY --from=build /home/app/dist /usr/share/nginx/html

EXPOSE 80

# start app
CMD ["nginx", "-g", "daemon off;"]