FROM ubuntu:focal

RUN apt-get update -y && apt-get install -y libcap2-bin jq build-essential curl

ENTRYPOINT ["sleep", "7200"]
