#!/bin/bash
set -x
variable=$(git diff origin/master... | grep "README");
if [ -z "$variable" ]; then
     ls
fi

