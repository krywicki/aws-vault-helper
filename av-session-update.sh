#!/bin/bash

#set -x # echo on

PROFILE=$1
AWS_SESSION_TOKEN=$(aws-vault exec $PROFILE -- printenv AWS_SESSION_TOKEN) 

aws configure set aws_session_token $AWS_SESSION_TOKEN --profile $PROFILE
