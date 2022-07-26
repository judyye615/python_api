
echo "Starting api integration test."
pytest  -vv ${API_TEST} --html=/home/docker/code/reports/report.html
