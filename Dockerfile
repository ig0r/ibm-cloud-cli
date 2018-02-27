FROM alpine:3.7

RUN apk --no-cache add --update \
&& apk --no-cache add ca-certificates wget \
&& update-ca-certificates \
&& apk --no-cache add openssl \
&& wget -O bluemix-cli.tar.gz https://clis.ng.bluemix.net/download/bluemix-cli/latest/linux64 \
&& tar xvfz bluemix-cli.tar.gz \
&& rm bluemix-cli.tar.gz \
&& Bluemix_CLI/install_bluemix_cli \
&& rm -rf Bluemix_CLI

CMD ["/bin/sh"]
