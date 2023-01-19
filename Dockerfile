FROM debian:latest
SHELL ["/bin/bash", "-c"]
WORKDIR /opt
RUN apt update -y && apt install -y git neofetch libzbar-dev python3-pip && git clone https://github.com/TeamPGM/PagerMaid-Pyro.git PagerMaid
WORKDIR /opt/PagerMaid
RUN pip3 install -r requirements.txt
COPY pagermaid.session ./
COPY config.yml ./
EXPOSE 2288
CMD ["python3", "-m", "pagermaid"]
