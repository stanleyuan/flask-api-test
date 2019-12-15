FROM python:3

ENV PYTHONUNBUFFERED 1
ENV LANG en_US.UTF-8
ENV TZ Asia/Taipei


RUN mkdir /code

WORKDIR /code

RUN apt update && apt install -y \
    python3-pip \
    python3-dev \
    vim

# set up project python env
COPY Pipfile /code/Pipfile
COPY Pipfile.lock /code/Pipfile.lock

RUN pip3 install pipenv && pipenv install --system --deploy

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . /code/
