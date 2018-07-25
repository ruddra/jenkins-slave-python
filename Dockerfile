FROM openshift/jenkins-slave-maven-centos7

USER root

# Install docker
RUN yum install -y yum-utils device-mapper-persistent-data lvm2 && \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
    yum install -y docker-ce && \
    usermod -aG docker $(whoami)
    
USER 1001
