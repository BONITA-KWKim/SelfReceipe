FROM python:3.6

RUN mkdir -p /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src

RUN pip install gunicorn django psycopg2-binary #psycopg2
# other option(using pipfile)
#COPY Pipfile Pipfile.lock //opt/services/djangoapp/src/
#RUN pip install pipenv && pipenv install -- system

COPY . /opt/services/djangoapp/src

EXPOSE 8000


