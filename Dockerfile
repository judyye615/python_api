FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update -y
RUN yum install -y python3
RUN yum install -y python-pip
RUN yum clean all

COPY docker-entrypoint.sh ./
RUN chmod +x docker-entrypoint.sh

COPY ./ ./
RUN pip install -r requirements.txt


ENTRYPOINT ["bash", "/docker-entrypoint.sh"]

