
echo "Starting api integration test."
pytest  -vv ${API_TEST} --html=/home/runner/work/python_api/python_api/reports/report.html
docker run --mount type=bind,source=/var/lib/docker/volumes,target="/github/workflow" --name service api-test