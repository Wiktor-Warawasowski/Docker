FROM mcr.microsoft.com/devcontainers/python:3.11-bookworm

WORKDIR /thesis

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN pip install git+https://github.com/rmbrualla/pycolmap.git