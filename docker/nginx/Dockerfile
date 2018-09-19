FROM nginx:stable-alpine

ARG env

# Copy nginx congig
ADD conf/nginx.conf /etc/nginx/nginx.conf

# Copy service config
ADD etc/$env.nginx.conf /etc/nginx/conf.d/service.conf

ADD script/entrypoint.sh /entrypoint.sh
ADD script/le.sh /le.sh

RUN \
  rm /etc/nginx/conf.d/default.conf && \
  chmod +x /entrypoint.sh && \
  chmod +x /le.sh && \
  apk add  --update certbot tzdata openssl && \
  rm -rf /var/cache/apk/*

CMD ["/entrypoint.sh"]
