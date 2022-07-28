
echo "Starting api integration test."
export source=${ROOTDIR}

pytest  -vv ${API_TEST} --html=./reports/report.html
