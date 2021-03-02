FROM ubuntu:20.04

LABEL maintainer="gajrajiitr@gmail.com"

RUN apt update -y

RUN echo 'Install languages'
RUN apt-get install -y tesseract-ocr
RUN apt-get install -y tesseract-ocr-hin
RUN apt-get install -y tesseract-ocr-mar
RUN apt-get install -y tesseract-ocr-san

# Use by Tess4j API
ENV TESSDATA_PREFIX=/usr/share/tesseract-ocr/4.00/tessdata/

# install open-jdk 1.8
RUN apt install -y openjdk-8-jre-headless

# Check the installation status
RUN tesseract -v
RUN tesseract --list-langs

# Chcck java version
RUN java -version
