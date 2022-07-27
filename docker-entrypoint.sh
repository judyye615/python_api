
echo "Starting api integration test."
pytest  -vv ${API_TEST} --html=/home/runner/work/python_api/python_api/reports/report.html
mount /home/docker/code /home/runner/work/python_api/python_api