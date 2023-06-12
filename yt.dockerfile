FROM alpine:latest

RUN apk update && apk add --no-cache git python3 py3-pip
RUN pip3 install gevent
RUN pip3 install flask
RUN git clone https://github.com/user234683/youtube-local.git
WORKDIR /youtube-local
RUN pip3 install -r requirements.txt
RUN sed -i 's/127\.0\.0\.1/0.0.0.0/g' server.py
