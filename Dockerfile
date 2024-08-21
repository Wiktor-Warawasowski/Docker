FROM mcr.microsoft.com/devcontainers/python:3.11-bookworm

WORKDIR /thesis

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN pip install git+https://github.com/rmbrualla/pycolmap.git

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install -U "jax[cuda12]"