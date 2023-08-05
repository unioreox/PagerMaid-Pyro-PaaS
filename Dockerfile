FROM debian:latest
SHELL ["/bin/bash", "-c"]
WORKDIR /opt
RUN apt update -y && apt install -y git neofetch libzbar-dev python3-pip python3-venv && git clone https://github.com/TeamPGM/PagerMaid-Pyro.git PagerMaid
WORKDIR /opt/PagerMaid
RUN python3 -m venv venv
RUN source venv/bin/activate && pip3 install -r requirements.txt
COPY pagermaid.session ./
COPY config.yml ./
EXPOSE 2288
CMD source venv/bin/activate && python3 -m pagermaid
