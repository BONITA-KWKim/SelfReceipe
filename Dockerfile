FROM python:3.6

ENV PROJECT_NAME=self_receipe

RUN mkdir -p /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src

RUN pip install gunicorn django psycopg2-binary #psycopg2
# other option(using pipfile)
#COPY Pipfile Pipfile.lock //opt/services/djangoapp/src/
#RUN pip install pipenv && pipenv install -- system

COPY . /opt/services/djangoapp/src
#RUN cd $PROJECT_NAME && python manage.py collectstatic --no-input

EXPOSE 8000

#CMD ["gunicorn", "--chdir", "self_receipe", "--bind", ":8000", "self_receipe.wsgi:application"]

