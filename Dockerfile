FROM jenkins/jenkins
USER root
RUN apt-get update && apt install docker.io -y
RUN sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
RUN sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
RUN dockerd
