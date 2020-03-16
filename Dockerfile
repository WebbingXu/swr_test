FROM swr.cn-east-3.myhuaweicloud.com/library/golang

ADD test.tar /usr/local/bin

CMD ["test"]
