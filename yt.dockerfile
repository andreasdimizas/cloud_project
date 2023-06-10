FROM alpine:latest

RUN apk update && apk add --no-cache git python3 py3-pip
RUN pip3 install gevent
RUN pip3 install flask
RUN git clone https://github.com/user234683/youtube-local.git
RUN ls -al 
WORKDIR /youtube-local
RUN pip3 install -r requirements.txt
