FROM python:3

WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install -r /app/requirements.txt

COPY . .
COPY ./.env /app/
COPY ./main.py /app/
RUN python /app/main.py