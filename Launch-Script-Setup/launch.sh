#!/bin/bash 
declare -a instance_list
mapfile -t instance_list < <(aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --key-name $4 --security-group-ids $5 --subnet-id $6 --associate-public-ip-address --iam-instance-profile Name=$7 --user-data file:///home/controller/Environment-Setup/install-env.sh --output table | grep InstanceId | sed "s/|//g" | tr -d ' ' | sed "s/InstanceId//g")
echo "Waiting for instance/instances ${instance_list[@]} to launch...."
aws ec2 wait instance-running --instance-ids ${instance_list[@]} 
echo "Instance/Instances ${instance_list[@]} up and running...."
