FROM alpine

RUN apk add --no-cache make git gnupg bash coreutils findutils
RUN git clone --branch v1.20180618 https://github.com/StackExchange/blackbox.git /usr/blackbox
RUN cd /usr/blackbox && make manual-install
