FROM swr.cn-east-3.myhuaweicloud.com/library/golang

RUN docker ps -a
ADD test /usr/local/bin

CMD ["test"]
