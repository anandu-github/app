
FROM python:3.9-slim


WORKDIR /opt/flask-app


COPY . /opt/flask-app


RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000


#CMD ["python3", "hello.py"]
CMD ["python3", "-u", "hello.py", "&"]
