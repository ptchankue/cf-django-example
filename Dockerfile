FROM python:3.11

RUN apt-get update --quiet --quiet \
    && apt-get upgrade --quiet --quiet && apt-get install build-essential

ENV APP_HOME /cf_django_example
RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY requirements.txt $APP_HOME
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt --default-timeout=3000


ADD . $APP_HOME