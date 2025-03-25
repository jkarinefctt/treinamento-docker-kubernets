FROM postgres:latest

WORKDIR /app

USER root

ENV DB_USER=root
ENV DB_PASSWORD=examplepassword
ENV DB_NAME=mydatabase
ENV DB_HOST=localhost
ENV DB_PORT=3306

COPY requirements.txt ./
COPY file.py ./
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "file.py"]