FROM python:3-alpine

LABEL maintainer="Aleksandr Beshenadze <ab@4xxi.com>"

RUN apk add --update --no-cache \
&& pip3 install --upgrade pip setuptools \
&& pip install passlib \
&& rm -rf /usr/share/man /tmp/* /var/cache/apk/* /root/.npm \
    /root/.node-gyp /root/.gnupg /usr/lib/node_modules/npm/man \
    /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html

ENTRYPOINT ["mkpasswd"]
CMD ["--help"]