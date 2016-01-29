# VERSION 0.1
FROM java:8
MAINTAINER Dirk Kirsten, <dk@basex.org>, Michael Seiferle, <ms@basex.org>

# Download latest BaseX release
ADD http://files.basex.org/releases/8.3.1/BaseX831.zip /tmp/BaseX.zip

RUN apt-get install unzip && \
  unzip /tmp/BaseX.zip -d /opt/ && \
  rm /tmp/BaseX.zip && \
  mv /opt/basex/data / && \
  mv /opt/basex/repo / && \
    mv /opt/basex/webapp / 
# Define working directory.
WORKDIR /opt/basex
COPY .basex /opt/basex/.basex


# Define mountable directories.
VOLUME ["/data", "/repo", "/webapp"]


# Expose port.
EXPOSE 8984
EXPOSE 1984

ENV HOME /opt/basex
ENV PATH $HOME/bin:$PATH

# Define default command.
ENTRYPOINT ["/opt/basex/bin/basexhttp", "-d"]
