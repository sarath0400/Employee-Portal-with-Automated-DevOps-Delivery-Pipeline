FROM ubuntu: latest
RUN apt update && apt install nginx -y
EXPOSE 80
COPY . /var/www/html
ENTRYPOINT ["nginx","-g","daemonoff"]
