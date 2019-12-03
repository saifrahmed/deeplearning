#! /bin/bash

repo_uri_gpu=$(cat repo_uri.info.GPU)

echo "Launching GPU learning container from $repo_uri_gpu using Docker NVIDIA Runtime"

docker run -p 8888:8888 --runtime=nvidia saifrahmed/deeplearning-gpu:r1
# TODO: launch CLI with Jupyter in background
