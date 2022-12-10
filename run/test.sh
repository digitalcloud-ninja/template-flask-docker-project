#!/usr/bin/env bash
while getopts c:p: flag
do
    case "${flag}" in
        c) container=${OPTARG};;
        p) publish=${OPTARG};;
    esac
done
echo "Container: $container";
echo "Port: $publish";
docker run -it --rm --name $container-test -p $publish:5000 williammagnuson/python-flask:latest