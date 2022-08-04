
echo "Starting api integration test."
#export WORKDIR=${WORKDIR}
pytest  -vv ${API_TEST} --html=${WORKDIR}/reports/report.html
