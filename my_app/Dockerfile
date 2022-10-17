# syntax=docker/dockerfile:1
#Base image
#https://github.com/docker-library/python/blob/a6e0e71f3fdb684a7330d9ad92a27da54fdbb6ea/3.8/slim-buster/Dockerfile
FROM python:3.8-slim-buster

#Create directory to save files inside container
WORKDIR /python-docker

#Copy requirements.txt inside the container
COPY requirements.txt requirements.txt
#Install dependencies that are saved inside requirements.txt
RUN pip3 install -r requirements.txt

#Copy main file (app.py) inside the container
COPY app.py app.py
#Copy the pages folder inside the container
COPY templates/ templates/
#Enviorenment variable for the URL of the Database
ENV DATABASE_URL=postgresql://postgres:postgres@db:5432/postgres
#Expose the 8081 port
EXPOSE 8081
#Entrypoint for the python3 executable
ENTRYPOINT [ "python3" ]
#Run the flask application of the container
CMD [ "-m", "flask", "run", "--host=0.0.0.0", "--port=8081"]