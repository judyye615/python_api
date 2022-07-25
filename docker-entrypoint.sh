
echo "Starting api integration test."

docker run -v "/home/docker/code":/home/runner/work/python_api/python_api api-test
pytest  -vv ${API_TEST} --html=./reports/report.html

