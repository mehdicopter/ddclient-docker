FROM alpine:latest

RUN apk add --no-cache \
    perl \
    perl-io-socket-ssl \
    perl-app-cpanminus \
    make

RUN cpanm Data::Validate::IP --no-wget

ADD files/ddclient.conf /etc/ddclient/

ADD bin/ddclient /usr/local/bin/

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["ddclient"]
