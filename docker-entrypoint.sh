
echo "Starting api integration test."
export ROOTDIR=${ROOTDIR}

pytest  -vv ${API_TEST} --html=./reports/report.html
