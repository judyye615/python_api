FROM api-test:latest
RUN --name service

RUN --mount=type=bind,source=/home/docker/code,target=/home/runner/work/python_api/python_api