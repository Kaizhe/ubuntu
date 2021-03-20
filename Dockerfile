FROM ubuntu:focal

RUN apt-get update -y && apt-get install -y libcap2-bin jq build-essential curl

RUN apt-get install -y apt-transport-https gnupg2

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list

RUN apt-get update

RUN apt-get install -y kubectl vim

RUN apt-get install -y nmap lsof net-tools netcat wget

ENTRYPOINT ["sleep", "7200"]
