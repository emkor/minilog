FROM python:3.8-slim

ADD requirements.txt .
RUN pip install -r requirements.txt

ADD log_continuosly.py .

CMD ["python", "./log_continuosly.py"]