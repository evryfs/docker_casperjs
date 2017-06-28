FROM ubuntu:latest
MAINTAINER zopanix <zopanix@gmail.com>
ENV CASPERJS_VERSION=1.1.3
ENV QT_QPA_PLATFORM=offscreen
ADD ./resources /resources
RUN /resources/build && rm -rf resources
ENTRYPOINT ["casperjs"]
VOLUME /data
WORKDIR /data
