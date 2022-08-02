FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update -y
RUN yum install -y python3
RUN yum install -y python-pip
RUN yum clean all

WORKDIR /home/runner/work/python_api/python_api/
VOLUME ["/home/runner/work/python_api/python_api/"]

COPY ["docker-entrypoint.sh", "/home/runner/work/python_api/python_api/"]
RUN chmod +x /home/runner/work/python_api/python_api/docker-entrypoint.sh


COPY ./ ./
RUN pip install -r requirements.txt

ENTRYPOINT ["bash", "/home/runner/work/python_api/python_api/docker-entrypoint.sh"]

