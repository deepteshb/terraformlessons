#!/bin/bash
IP_ADDRESS = "10.2.2.1"

EC2_INSTANCE = $(ec2-run-instance --instance-type t2.micro ami-)
INSTANCE = $(echo ${EC2_INSTANCE} | sed 's/*INSTANCE //' | sed 's/ .*//')

#Wait for instance to be ready.
echo "Instance $INSTANCE is up and ready!!!."
