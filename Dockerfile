FROM gocd/gocd-agent-debian-9:v19.2.0

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash

COPY ./git_credentials.sh /home/go2/git_credentials.sh

CMD /home/go2/git_credentials.sh && /docker-entrypoint.sh

