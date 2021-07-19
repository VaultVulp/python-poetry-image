FROM python:3.8.2-slim-buster

COPY update-sys-packages.sh .

RUN ./update-sys-packages.sh

RUN pip install -U pip

RUN pip install poetry==1.0.5

ENTRYPOINT poetry
