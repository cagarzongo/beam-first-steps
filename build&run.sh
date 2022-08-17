#!/bin/bash -e
#
#Build and run Apache Beam Developer enviroment

docker system prune -f
docker volume prune -f
docker build -t beam-lab:v1 .
docker run -it -p 8888:8888 -v "${PWD}/workspace":/home/jovyan/work -e GRANT_SUDO=yes beam-lab:v1 start-notebook.sh --NotebookApp.token='lab'
