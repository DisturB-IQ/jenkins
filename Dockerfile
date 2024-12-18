FROM jenkins/jenkins
USER root
RUN apt-get update && apt install docker.io -y
RUN update-alternatives --set iptables /usr/sbin/iptables-legacy
RUN update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
RUN dockerd
