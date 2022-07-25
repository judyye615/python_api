
echo "Starting api integration test."

pytest -v "/home/docker/code":/home/runner/work/python_api/python_api -vv ${API_TEST} --html=./reports/report.html

