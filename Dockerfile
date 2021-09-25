FROM python:3.9.7

# Install PIP and Requiriments
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements/dev.txt /code
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
ADD . /code/
