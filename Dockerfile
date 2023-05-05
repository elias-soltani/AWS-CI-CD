FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app
RUN apt-get update --fix-missing && apt-get install -y awscli
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]