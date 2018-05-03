FROM emtchifmcloud/simulationweb:8.0.0

LABEL maintater = "HiFM emtc@"pactera.com"

ENV NGINX_VERSION 1.13.8-1
ENV NJS_VERSION 1.13.8.0.1.15

WORKDIR /usr/local/src

USER root

RUN cd /var/www/ifm-web \
    && rm -f /var/www/ifm-web/package-lock.json \
    && git remote set-url origin http://docker:emtc123456@code.essocloud.com/ifm/ifm-web.git \
    && echo "4.29.1.4" > jiaqi.txt \
    && git pull origin master \
    && npm update \
    && npm run build 

RUN cd /var/www/ifm-web/dist/static/ \
    && chmod -R 777 images/

EXPOSE 80

CMD ["nginx"]
