
echo "Starting api integration test."

pytest -vv -m ${API_TEST} --html=.${WORKDIR}/reports/report.html
