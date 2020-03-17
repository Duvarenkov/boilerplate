FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /application
WORKDIR /application
COPY requirements.txt /application/
RUN pip install -r requirements.txt
COPY . /application/
EXPOSE 80
