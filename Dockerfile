FROM debian:latest
SHELL ["/bin/bash", "-c"]
WORKDIR /opt
RUN apt update -y && apt install -y git neofetch libzbar-dev python3-pip && git clone https://github.com/TeamPGM/PagerMaid-Pyro.git PagerMaid
WORKDIR /opt/PagerMaid
RUN pip3 install -r requirements.txt
RUN python3 -m pagermaid
CMD ["python3", "-m", "pagermaid"]