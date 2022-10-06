
echo "Starting api integration test."

pytest -vv -m smoke --html=.${WORKDIR}/reports/report.html
