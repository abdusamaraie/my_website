FROM centos:latest
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm 
RUN yum -y install python36u \
&& yum -y install python36u-pip

WORKDIR /app
COPY server /app
COPY requirements.txt /app

RUN pip3.6 install -r requirements.txt

EXPOSE 80
CMD ["python3.6", "server.py"]