# VERSION 0.1
#
# Base Docker file. Does everything except define the volumes
FROM java:8
MAINTAINER Dirk Kirsten, <dk@basex.org>, Michael Seiferle, <ms@basex.org>

ENV HOME /opt/basex
ENV PATH $HOME/bin:$PATH

# Get the Basex installation and install it:

RUN apt-get install unzip && \
  wget -O /tmp/BaseX.zip http://files.basex.org/releases/BaseX-latest.zip && \ 
  unzip /tmp/BaseX.zip -d /opt/ && \
  rm /tmp/BaseX.zip && \
  mv /opt/basex/data / && \
  mv /opt/basex/repo / && \
  mv /opt/basex/webapp / 
    
# Define working directory.
WORKDIR /opt/basex
COPY .basex /opt/basex/.basex

# Expose port.
EXPOSE 8984
EXPOSE 1984

# Define default command.
ENTRYPOINT ["/opt/basex/bin/basexhttp", "-d"]
