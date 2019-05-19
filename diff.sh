#!/bin/bash
set -x
variable=$(git diff origin/master... | grep "README");
if [ -z "$variable" ]; then
     echo "changes were not made to the README"
else
     echo "changes were made to the README"
fi

