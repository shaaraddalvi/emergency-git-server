FROM python:3.8-slim

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install git

WORKDIR /code

RUN mkdir /repos

ENV _HOST 0.0.0.0

EXPOSE 8000

COPY LICENSE .
COPY ./*.py ./

CMD ["python3", "./emergency_git_server.py", "/repos"]