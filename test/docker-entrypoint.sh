
echo "Starting api integration test."

pytest  -vv ${API_TEST} --html=.${WORKDIR}/reports/report.html
