FROM puckel/docker-airflow
USER root
RUN apt-get update \
  && apt-get install -y openssh-client \
  && apt-get install nano \
  && apt-get clean\
  && pip install paramiko --upgrade \
  && eval `ssh-agent -s` && ssh-add \
