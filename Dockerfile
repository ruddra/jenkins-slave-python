# extend the official jenkins slave base image
FROM openshift/jenkins2-centos7

RUN yum install docker
