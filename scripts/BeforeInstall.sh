#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 754515738597.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 754515738597.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-10-ecr-repo | wc -l`  = 1 ]
then
        docker 754515738597.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-10-ecr-repo
        docker pull 754515738597.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-10-ecr-repo:latest
else
        docker pull 754515738597.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-10-ecr-repo:latest
fi
