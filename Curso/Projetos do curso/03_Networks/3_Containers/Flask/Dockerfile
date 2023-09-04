FROM python:3

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    python3-requests   

WORKDIR /app

RUN pip install flask requests flask_mysqldb

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]