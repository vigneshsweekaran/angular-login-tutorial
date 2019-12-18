From nginx:1.17.3-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY nginx/nginx.conf /etc/nginx/nginx.conf

COPY /dist/login-tutorial /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
