FROM ubuntu:14.04
MAINTAINER somebody
RUN apt-get -qq update
RUN apt-get -qqy install aptitude python python-dev python-pip redis-server

ADD ./ /trouble

WORKDIR /trouble
RUN pip install -r requirements.txt
CMD service redis start
EXPOSE 5000
CMD python -m trouble.app
