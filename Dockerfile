FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update -y
RUN yum install -y python3
RUN yum install -y python-pip
RUN yum clean all

VOLUME [ "/data" ]
COPY docker-entrypoint.sh ./test
RUN chmod +x /test/docker-entrypoint.sh

COPY ./ ./
RUN pip install -r requirements.txt


ENTRYPOINT ["bash", "/docker-entrypoint.sh"]

