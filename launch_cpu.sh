#! /bin/bash

repo_uri_cpu=$(cat repo_uri.info.CPU)

echo "Launching CPU learning container from $repo_uri_cpu using Docker Standard CPU Runtime"

docker run -p 8888:8888 saifrahmed/deeplearning-cpu:r1
# TODO: launch CLI with Jupyter in background
