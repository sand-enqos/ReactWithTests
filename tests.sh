#!/bin/bash
# integration-tests.sh
echo "tests form shell..."
res1=$(nohup npm test --watchAll)
echo $res1;
echo "$res1";


