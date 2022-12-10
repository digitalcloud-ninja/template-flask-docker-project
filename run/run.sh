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
docker run -d --name $container -v $container-data:/app -p $publish:5000 williammagnuson/python-flask:latest