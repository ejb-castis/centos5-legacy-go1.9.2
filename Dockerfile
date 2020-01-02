# Pull base image
FROM castis/centos5-legacy

RUN wget https://dl.google.com/go/go1.9.2.linux-amd64.tar.gz; \
  tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz; \
  rm go1.9.2.linux-amd64.tar.gz

RUN wget https://www.openssl.org/source/openssl-1.0.2a.tar.gz; \
  tar -C /usr/local -xzf openssl-1.0.2a.tar.gz; \
  rm openssl-1.0.2a.tar.gz

# Set environment variables
ENV PATH $PATH:/usr/local/go/bin

