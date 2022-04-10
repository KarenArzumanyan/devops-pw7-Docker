FROM python:3.8-slim

WORKDIR /app
COPY . /app

RUN pip install Flask
RUN pip install ConfigParser
RUN pip install Psycopg2

CMD ["python3", "web.py"]