#!/bin/bash
echo "Lets get vpc informaton for the region us-east-2 ...."
aws ec2 describe-vpcs --region us-east-2 | jq ".Vpcs[].VpcId" -r
VPC_COUNT=$(ec2 describe-vpcs --region us-east-2 | jq ".Vpcs[].VpcId" -r | wc -l)
echo $VPC_COUNT
echo ${VPC_COUNT}
echo "${VPC_COUNT}"
echo "us-east-2 has a total count of ${VPC_COUNt} VPCs"