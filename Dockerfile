FROM python:2.7

ENV PYTHONUNBUFFERED 1

ENV PYTHONPATH . 

ENV DJANGO_SETTINGS_MODULE sample.settings 

RUN mkdir /app

WORKDIR /app

ADD requirements.txt /app/

RUN pip install -r requirements.txt

ADD . /app/

ENTRYPOINT ["django-admin.py", "runserver", "0.0.0.0:8080"]
