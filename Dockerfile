FROM python:3-alpine

COPY requirements.txt /requirements.txt

RUN set -x \
  && pip install -r /equirements.txt
