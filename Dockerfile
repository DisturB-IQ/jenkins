FROM jenkins/jenkins:lts
USER root
RUN --mount=type=secret,id=proxypass \
    echo "Acquire::http::Proxy \"http://$(cat /run/secrets/proxypass)@webproxy.aoi.lan:8080\";" >> /etc/apt/apt.conf.d/10proxy
 RUN --mount=type=secret,id=proxypass \
     echo "Acquire::https::Proxy \"https://$(cat /run/secrets/proxypass)@webproxy.aoi.lan:8080\";" >> /etc/apt/apt.conf.d/10proxy
RUN apt-get update && apt install docker.io -y
RUN dockerd
