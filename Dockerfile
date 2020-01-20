# Copyright (c) 2019, NVIDIA Corporation. All rights reserved.
#
# This work is made available under the Nvidia Source Code License-NC.
# To view a copy of this license, visit
# https://nvlabs.github.io/stylegan2/license.html

FROM tensorflow/tensorflow:1.15.0-gpu-py3

RUN apt-get -y update
RUN apt-get install -y --fix-missing \
    build-essential \
    cmake \
    git \
    wget \
    software-properties-common \
    zip \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*

RUN pip install scipy==1.3.3
RUN pip install requests==2.22.0
RUN pip install Pillow==6.2.1
RUN pip install --force tqdm==4.24.0
RUN pip install keras==2.3.1
RUN pip install imutils==0.5.3
RUN pip install opencv-python==4.1.2.30

RUN cd ~ && \
    mkdir -p dlib && \
    git clone -b 'v19.19' --single-branch https://github.com/davisking/dlib.git dlib/ && \
    cd  dlib/ && \
    python setup.py install

WORKDIR /project