FROM nginx:alpine
 # use a volume is mor efficient and speed that filesystem
VOLUME /tmp
RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY billingApp_prep /usr/share/nginx/html/billingApp_prep
COPY billingApp_prod /usr/share/nginx/html/billingApp_prod
RUN chmod -R 755 /usr/share/nginx/html
#expose app and 80 for nginx app
EXPOSE 80 81
CMD ["nginx", "-g", "daemon off;"]


