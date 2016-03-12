from ubuntu:latest

MAINTAINER Eric Greene <eric@training4developers.com>

ENV NODE_VERSION 4.4.0
ENV NODE_ARCHIVE node-v$NODE_VERSION-linux-x64.tar.xz

# Update & Install Ubuntu Packages
RUN apt-get update && apt-get install -y \
		curl \
		xz-utils \
		python \
		build-essential \
		checkinstall

# Download Binary Node.js Files
RUN mkdir /opt/downloads; mkdir /opt/app
RUN curl -o /opt/downloads/$NODE_ARCHIVE \
		https://nodejs.org/dist/v$NODE_VERSION/$NODE_ARCHIVE

# Extract and Install Node.js Files
RUN	tar -C /usr/local --strip-components 1 -xf /opt/downloads/$NODE_ARCHIVE

# Open Port 3000 for Node.js App
EXPOSE 3000

# Adapted from https://github.com/wnameless/docker-oracle-xe-11g
# Thank you Wei-Ming Wu <wnameless@gmail.com>!
ADD assets /assets
RUN chmod u+x /assets/setup.sh; /assets/setup.sh
EXPOSE 1521
EXPOSE 8080
# End Adaptation
