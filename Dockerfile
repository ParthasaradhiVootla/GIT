FROM centos:latest
MAINTAINER Parthu@dockerclub.com
WORKDIR /opt
COPY f1 .
COPY f2 .
COPY f3 .
RUN yum install java 1.8 -y
RUN echo "hello docker " >>  f3
WORKDIR /root
CMD ["/bin/bash"]


