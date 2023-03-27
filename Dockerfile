#FROM python:3.9-alpine3.16
FROM python:3.12-rc-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY service /service
WORKDIR /service
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

#
#RUN adduser --disabled-password service-user
# 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
#USER service-user