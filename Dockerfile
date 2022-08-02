FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update -y
RUN yum install -y python3
RUN yum install -y python-pip
RUN yum clean all

VOLUME ["/home/docker/code/","/home/runner/work/python_api/python_api/"]

COPY ["docker-entrypoint.sh", "/home/docker/code/"]
RUN chmod +x /home/docker/code/docker-entrypoint.sh


COPY ./ ./
RUN pip install -r requirements.txt
RUN --mount=type=bind,source=/,target=/home/runner/work/python_api/python_api

ENTRYPOINT ["bash", "/home/docker/code/docker-entrypoint.sh"]

