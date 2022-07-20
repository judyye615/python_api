
echo "Starting api integration test."
pytest -vv ${API_TEST} --html=./reports/
ID=$(docker ps -aqf "ancestor=api-test")
docker cp $ID:/home/docker/code/ ${{ github.workspace }}/reports
