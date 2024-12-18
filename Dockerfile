FROM jenkins/jenkins:lts-jdk17
USER root
RUN docker run -it -v /var/run/docker.sock:/var/run/docker.sock ubuntu:latest sh -c "apt-get update ; apt-get install docker.io -y ; bash"
#RUN apt-get update && apt install docker.io -y
#RUN dockerd
