FROM public.ecr.aws/amazonlinux/amazonlinux:latest AS aws

RUN yum update -y
RUN yum install -y python3
RUN yum install -y python-pip
RUN yum clean all

WORKDIR /home/docker/code/
VOLUME ["/home/docker/code/","/home/runner/work/python_api/python_api/"]
RUN --mount=type=bind,from=aws,source=/home/docker/code/,target=/home/runner/work/python_api/python_api/
COPY ["docker-entrypoint.sh", "/home/docker/code/"]
RUN chmod +x /home/docker/code/docker-entrypoint.sh


COPY ./ ./
RUN pip install -r requirements.txt

ENTRYPOINT ["bash", "/home/docker/code/docker-entrypoint.sh"]

