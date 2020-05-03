FROM debian

RUN apt-get update

RUN apt-get install --no-install-recommends -y \
    gnupg \
    ca-certificates \
    curl \
    apt-utils \
    apt-transport-https

RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" \
    | tee /etc/apt/sources.list.d/coral-edgetpu.list

RUN apt-get update && apt-get install edgetpu-compiler -y