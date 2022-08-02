
echo "Starting api integration test."

pytest  -vv ${API_TEST} --html=./reports/report.html
