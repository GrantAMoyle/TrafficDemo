FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./single.html /usr/share/nginx/html/index.html
ENV PORT 8080
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]