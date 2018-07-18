# extend the official jenkins slave base image
FROM openshift/jenkins2-centos7

ENV PYTHON_VERSION 3.6.1

# install python
RUN set -x \
    && chown -R root:root /home/jenkins \
    && yum install docker
