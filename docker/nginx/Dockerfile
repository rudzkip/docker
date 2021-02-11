FROM nginx:1.17.8-alpine

RUN apk update

COPY ./public/ /app/public/

COPY ./docker/nginx/nginx.conf /etc/nginx/conf.d/default.conf
