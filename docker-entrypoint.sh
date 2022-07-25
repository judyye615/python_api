
echo "Starting api integration test."

pytest -v "/home/docker/code":${{ github.workspace }} -vv ${API_TEST} --html=./reports/report.html

