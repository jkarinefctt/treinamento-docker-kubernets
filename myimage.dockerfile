#get base image
FROM postgres:latest
#define the work directory
WORKDIR /app
#define the user as root
USER root
#set environment variables
ENV DB_USER=root
ENV DB_PASSWORD=examplepassword
ENV DB_NAME=mydatabase
ENV DB_HOST=localhost
ENV DB_PORT=5433
#copy archives 
COPY requirements.txt ./
COPY file.py ./
#run the needed instalations
RUN pip install --no-cache-dir -r requirements.txt
#run the python file
CMD ["python", "file.py"]