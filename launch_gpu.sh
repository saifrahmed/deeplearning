#! /bin/bash

repo_uri_gpu=$(cat repo_uri.info.GPU)

echo "Launching GPU learning container from $repo_uri_gpu using Docker NVIDIA Runtime"
