FROM node:16.13.2-alpine3.15

#vuecliインストール
RUN npm install -g @vue/cli@4.2

RUN apk update && \
    apk --no-cache add git && \
    rm -f /var/cache/apk/*

EXPOSE 8080

CMD ["/bin/sh"]