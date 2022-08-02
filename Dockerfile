FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update -y
RUN yum install -y python3
RUN yum install -y python-pip
RUN yum clean all

WORKDIR ${{ github.workspace}}/

COPY ["docker-entrypoint.sh", ${{ github.workspace}}/]
RUN chmod +x ${{ github.workspace}}/docker-entrypoint.sh


COPY ./ ./
RUN pip install -r requirements.txt

ENTRYPOINT ["bash", ${{ github.workspace}}/docker-entrypoint.sh"]

