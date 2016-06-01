FROM python:2.7

# Django and gunicorn installation
COPY ./app/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

EXPOSE 8000

#Gunicorn start
CMD /usr/local/bin/gunicorn -b 0.0.0.0:8000 --pythonpath /app app.wsgi:application