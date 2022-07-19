
echo "Starting api integration test."
pytest -vv ${API_TEST} --env ${API_ENV} --api ${API_VERSION} --level DEBUG --html=//home/docker/code/reports/report.html
