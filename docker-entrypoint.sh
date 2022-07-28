
echo "Starting api integration test."
export ROOTDIR="/home/docker/code"

pytest  -vv ${API_TEST} --html=./reports/report.html
