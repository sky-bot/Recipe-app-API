FROM python:3.6-alpine 
#MAINTAINER Akash Full Stack developer

ENV PYTHONUNBUFFERED 1     
#it tells Python to run in unbeffered mode which is recommended when running Python within
#The reason for that is that it doesn't allow Python to buffer the Outputs

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
#foe=r security reason