FROM centos:7

USER root

# OS Update First
RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install ansible
RUN yum -y install openssh-clients.x86_64

# Ansible User
RUN adduser -ms /bin/bash ansible
RUN mkdir /home/ansible/.ssh

USER ansible