#!/bin/bash
############################################################
# Help                                                     #
############################################################
help()
{
  # Display Help
  echo "This is a simple script to build a docker image of this Python Project"
  echo
  echo "Syntax: ./build [-h]"
  echo "options:"
  echo "h     Print this Help."
  echo
  echo "When setting up the project define the variables:"
  echo "-  image: repository-url/project-name:tag"
  echo "-  container: charlie-brown-xmas"
  echo "-  port: port to expose (8080)"
  echo
}

############################################################
# Main Program                                             #
############################################################
declare image="docker/python-project:latest"
# shellcheck disable=SC2034
declare container="my-application"
# shellcheck disable=SC2034
declare port

if [[ "${1}" = "-h" ]]; then
  help
else
  docker build -t "${image}" ../.
fi