FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget \
&& wget -O bluemix-cli.tar.gz https://clis.ng.bluemix.net/download/bluemix-cli/latest/linux64 \
&& tar xvfz bluemix-cli.tar.gz \
&& rm bluemix-cli.tar.gz \
&& Bluemix_CLI/install_bluemix_cli \
&& rm -rf Bluemix_CLI

CMD ["/bin/sh"]
