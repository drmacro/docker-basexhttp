# VERSION 0.1
FROM dfst/basexhttp-base
MAINTAINER Dirk Kirsten, <dk@basex.org>, Michael Seiferle, <ms@basex.org>

# Define mountable directories.
VOLUME ["/data", "/repo", "/webapp"]
