FROM jenkins/jenkins
USER root
RUN apt-get update && apt install docker.io -y
RUN dockerd
