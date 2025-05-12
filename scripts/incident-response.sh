#!/bin/bash
INSTANCE_ID=$1
aws ec2 reboot-instances --instance-ids $INSTANCE_ID