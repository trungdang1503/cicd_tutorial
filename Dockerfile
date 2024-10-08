FROM ubuntu:latest
MAINTAINER Tuan Thai "tuanthai@example.com"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv venv
RUN ./venv/bin/python3 -m pip install --upgrade pip
RUN ./venv/bin/pip3 install --no-cache-dir -r requirements.txt
ENTRYPOINT ["./venv/bin/python3"] 
CMD ["flask_docker.py"]

