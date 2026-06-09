FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
   apt-get install -y \
   python3 \
   python3-pip \
   git \
   curl

# Docker CLI
RUN curl -fsSL https://get.docker.com | sh

# kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.34.1/bin/linux/amd64/kubectl" && \
   chmod +x kubectl && \
   mv kubectl /usr/local/bin/

USER jenkins
