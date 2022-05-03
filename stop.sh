#!/bin/bash
if [ -f id.txt ]; then
    id=$(cat id.txt)
    docker kill $id
    docker rm $id
    rm id.txt
    echo "Deleted $id"
else
    echo "No running instance."
fi
