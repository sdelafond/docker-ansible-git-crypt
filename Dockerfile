FROM debian:buster

LABEL org.label-schema.vcs-url="https://github.com/sdelafond/docker-ansible-git-crypt" \
      org.label-schema.schema-version="1.0"

RUN apt update -q
RUN apt install --yes --no-install-suggests --no-install-recommends openssh-client
RUN apt install --yes --no-install-suggests --no-install-recommends git
RUN apt install --yes --no-install-suggests --no-install-recommends git-crypt
RUN apt install --yes --no-install-suggests --no-install-recommends ansible
RUN apt install --yes --no-install-suggests --no-install-recommends gnupg2
RUN apt clean

RUN install -d -m 700 /root/.ssh
