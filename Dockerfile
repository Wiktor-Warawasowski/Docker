FROM mcr.microsoft.com/devcontainers/python:3.11-bookworm

WORKDIR /thesis

RUN apt-get update && apt-get install cmake libfreeimage-dev libceres-dev libgl1-mesa-dev libglew-dev qtbase5-dev libboost-all-dev imagemagick ffmpeg libsm6 libxext6  -y

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN pip install git+https://github.com/rmbrualla/pycolmap.git

RUN pip install dis-bg-remover

RUN chmod 777 /
