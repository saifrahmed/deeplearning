#! /bin/bash

repo_uri_cpu=$(cat repo_uri.info.CPU)
repo_uri_gpu=$(cat repo_uri.info.GPU)

echo "Building and publishing CPU container to $repo_uri_cpu"
docker build -f Dockerfile.CPU -t $repo_uri_cpu .
if [ "$?" -eq "0" ]
then
	echo "CPU Container Build Successful, Publishing container publicly to DockerHub"
	docker push $repo_uri_cpu
	echo "CPU Container Build Completed, Publishing to $repo_uri_cpu"
else
 	echo "CPU Container Build Failed, no release executed"
fi


echo "Building and publishing GPU container to $repo_uri_gpu"
docker build -f Dockerfile.GPU -t $repo_uri_gpu .
if [ "$?" -eq "0" ]
then
	echo "GPU Container Build Successful, Publishing container publicly to DockerHub"
	docker push $repo_uri_gpu
	echo "GPU Container Build Completed, Publishing to $repo_uri_gpu"
else
 	echo "GPU Container Build Failed, no release executed"
fi
