
echo "Starting api integration test."
export source=${source}

pytest  -vv ${API_TEST} --html=./reports/report.html
