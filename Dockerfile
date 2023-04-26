FROM python:3.10.4-alpine
WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8082
ENTRYPOINT ["python3", "app.py"]