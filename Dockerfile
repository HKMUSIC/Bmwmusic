FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl python3 python3-pip ffmpeg

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

RUN node -v && npm -v

COPY . /app/
WORKDIR /app/

RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD bash start
