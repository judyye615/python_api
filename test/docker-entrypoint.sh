
echo "Starting api integration test."
export WORKDIR=${WORKDIR}
pytest  -vv ${API_TEST} --html=./reports/report.html
