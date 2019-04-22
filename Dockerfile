FROM gocd/gocd-agent-debian-9:v19.2.0

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash

RUN apt-get update \
 && apt-get install sudo python-pip -y \
 && pip install awscli \
 && rm -rf /var/lib/apt/lists/*
 
COPY ./git_credentials.sh /docker-entrypoint.d/git_credentials.sh
COPY ./aws_credentials.sh /docker-entrypoint.d/aws_credentials.sh
