#!/bin/bash
echo "tests form shell..."
docker-compose stop
docker-compose rm -f
docker-compose build
docker-compose up --timeout 1 --no-build -d
rm -rf nohup
nohup docker-compose run tests
errorMessage="Test failed.  See above for more details."
if grep -q  "$errorMessage" "nohup.out"; then
    echo "Tests Failed"
    exit 1
else
    echo "Tests Passed"
    docker-compose stop
    docker-compose rm -f
    npm start
fi






