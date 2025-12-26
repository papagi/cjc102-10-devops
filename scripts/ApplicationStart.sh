#!/bin/bash
docker run -p 80:5000 --name flask-web -d 754515738597.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-10-ecr-repo:latest

sleep 20s
