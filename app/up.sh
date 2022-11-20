#!/bin/bash
# Flags for dev
while getopts "m:" arg
do
    case $arg in
        m) MODE=${OPTARG};;
        *) exit 1;;
    esac
done

if [ -z "$MODE" ]
then
    echo "+------------------+"
    echo "| Production Mode  |"
    echo "+------------------+"
    docker compose up
elif [ "$MODE" == "dev" ]
then
    echo "+------------------+"
    echo "| Development Mode |"
    echo "+------------------+"
    docker compose -f compose.yml -f compose.dev.yml up
else
    echo "Incorrect flag argument passed"
    echo "options: 'dev', ''"
    exit 1;
fi
