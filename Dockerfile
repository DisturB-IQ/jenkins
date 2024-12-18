FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt install docker.io -y
RUN dockerd
