FROM jenkins/jenkins
CAP_DROP = ALL
CAP_ADD = NET_ADMIN
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y docker.io
# Expose the Jenkins port
EXPOSE 8080

# Start Jenkins
CMD ["jenkins.war", "--httpPort=8080"]

