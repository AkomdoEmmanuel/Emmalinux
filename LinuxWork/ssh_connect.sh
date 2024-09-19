#!/bin/bash

# Prompt for the EC2 instance's IP address
read -p "Enter EC2 instance public IP: " ec2_ip

# Prompt for the path to the SSH key pair file
read -p "Enter the path to your key file (e.g., /path/to/key.pem): " key_file

# Prompt for the username (default is 'ubuntu' for Ubuntu instances)
read -p "Enter the username (default is ubuntu): " username
username=${username:-ubuntu}

# Establish SSH connection
ssh -i "$key_file" "$username@$ec2_ip"
