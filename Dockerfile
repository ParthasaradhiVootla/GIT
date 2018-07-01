FROM centos:latest 

MAINTAINER parthu
USER root
WORKDIR /opt
COPY f1 .
COPY f2 .
COPY f3 .

RUN mkdir test
RUN touch l1 l2 l3
RUN yum install java 1.8 -y
RUN yum install httpd -y

USER 1010
WORKDIR /var
CMD ["/bin/bash"]
