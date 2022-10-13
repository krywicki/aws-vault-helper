#!/bin/bash

PROFILE=$1
aws-vault exec "$PROFILE" -- sh -c "aws configure set aws_session_token $(printenv AWS_SESSION_TOKEN) --profile $PROFILE"

