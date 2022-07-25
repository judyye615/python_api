
echo "Starting api integration test."
export DIRF=/home/docker/code
pytest  -vv ${API_TEST} --html=./reports/report.html

