FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y

RUN sudo apt install -y default-jdk git python3 python3-pip python3-venv unixodbc-dev && \
    apt-get -qy autoremove

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 jenkins

RUN echo 'jenkins:jenkins' | chpasswd

RUN service ssh start

EXPOSE 22 

WORKDIR /home/ubuntu