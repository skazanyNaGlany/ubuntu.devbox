FROM ubuntu:latest

ADD src /root/src
WORKDIR /root/src

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV LC_CTYPE C.UTF-8

ARG DEBIAN_FRONTEND=noninteractive

RUN apt -y update

RUN apt -y install vim
RUN apt -y install screen
RUN apt -y install bash
RUN apt -y install git
RUN apt -y install htop
RUN apt -y install curl
RUN apt -y install wget
RUN apt -y install file
RUN apt -y install iputils-ping
#RUN apt -y install chromium-browser
#RUN apt -y install chromium-chromedriver
RUN apt -y install firefox
RUN apt -y install python3
RUN apt -y install python3-pip
RUN apt -y install python3-dev
RUN apt -y install default-jre
RUN apt -y install psmisc
RUN apt -y install dnsutils
RUN apt -y install software-properties-common

# install Chromium and ChromeDriver
RUN add-apt-repository -y ppa:saiarcot895/chromium-beta
RUN apt -y update
RUN apt -y install chromium-browser
RUN apt -y install chromium-chromedriver

RUN ln -s `find / -name chromedriver` /usr/bin/chromedriver
RUN ln -s `which python3` /bin/python

