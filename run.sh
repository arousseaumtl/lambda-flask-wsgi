#!/bin/sh

FUNCTION_NAME=$(basename $(pwd))
MESSAGE="""
  \n\nTest: \n\n\t\033[0;32mcurl -X GET http://localhost:5000/test\033[0m\n\n
  Check documentation for further details.
  """

if [ $# -eq 0 ]
  then
    echo "Usage: run.sh [--run (-r), or --build (-b)]"
  else
    [[ "$@" =~ "--run" || "$@" =~ "-r" ]] && ( echo $MESSAGE; docker run -p 5000:5000 --env-file ./vars.env --rm $FUNCTION_NAME )
    [[ "$@" =~ "--build" || "$@" =~ "-b" ]] && ( docker build -t $FUNCTION_NAME:latest . )
fi
