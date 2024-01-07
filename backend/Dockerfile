FROM python:latest

ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install -y gettext netcat gcc gdal-bin jq libevent-dev build-essential && \
    apt-get install -y libpq-dev python3-dev python3-setuptools default-libmysqlclient-dev

COPY ["requirements.txt", "/usr/src/"]

WORKDIR /usr/src/

RUN pip install -r requirements.txt

COPY [".", "/usr/src/"]

EXPOSE 8000
