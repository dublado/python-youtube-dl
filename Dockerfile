FROM python:3.8.2-slim-buster
COPY youtube-dl /youtube-dl
WORKDIR /youtube-dl
RUN python setup.py install
VOLUME /videos
WORKDIR /videos
ENTRYPOINT ["youtube-dl"]
