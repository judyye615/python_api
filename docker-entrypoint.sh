
echo "Starting api integration test."
pytest  -vv ${API_TEST} --html=${{ github.workspace}}/reports/report.html
mount /home/docker/code ${{ github.workspace}}