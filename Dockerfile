FROM nginx:1.23-alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf *
COPY ./website .
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

