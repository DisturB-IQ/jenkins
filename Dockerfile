FROM jenkins/jenkins:lts-jdk17
USER root
RUN apt-get update && apt install docker.io -y
USER root
RUN dockerd
