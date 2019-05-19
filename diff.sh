#!/bin/bash

#the following would be bin/sh in the jenkins file
set -x
variable=$(git diff origin/master... | grep "/Support/");
if [ -z "$variable" ]; then
     echo "changes were not made in the Support Directory"
else
     echo "changes were made in the Support Directory"
fi

