FROM nginx:latest
LABEL "email"="arn.techtrainings@gmail.com"
ENV POWERSTAR=PK
ENV AWS_ROLE=ARN
ARG VERSION='1.0.0'
RUN apt update && apt install -y curl
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY error.html /usr/share/nginx/html/
COPY ngnix_default.config /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
