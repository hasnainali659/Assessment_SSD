FROM   jjanzic/docker-python3-opencv

ENV TERM = xterm
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN apt-get install -y --no-install-recommends \
    libopencv-dev \
    python3-opencv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /opt/build
COPY . .

ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/app

WORKDIR /opt/build/MobileSSD
RUN pip install --no-cache-dir -r requirements.txt
