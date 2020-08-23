FROM python:3.8-slim

ADD requirements.txt .
RUN pip install -r requirements.txt

ADD log_continuosly.py .
ADD logging.json /etc/logging.json

CMD ["python", "./log_continuosly.py"]