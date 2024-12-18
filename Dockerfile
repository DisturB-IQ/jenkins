FROM jenkins/jenkins
USER root
RUN apt-get update && apt install docker.io -y
RUN -v /var/run/docker.sock:/var/run/docker.sock
