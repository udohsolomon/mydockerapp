FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python-setuptools python-dev build-essential python-pip python-mysqldb
RUN pip install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
