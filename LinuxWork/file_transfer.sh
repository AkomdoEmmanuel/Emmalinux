#!/bin/bash

# Prompt for the EC2 instance's IP address
read -p "Enter EC2 instance public IP: " ec2_ip

# Prompt for the path to the SSH key pair file
read -p "Enter the path to your key file (e.g., /path/to/key.pem): " key_file

# Prompt for the username (default is 'ubuntu')
read -p "Enter the username (default is ubuntu): " username
username=${username:-ubuntu}

# Ask if the user wants to upload or download
read -p "Do you want to upload or download a file? (upload/download): " action

if [ "$action" == "upload" ]; then
    # Prompt for local and remote file paths for upload
    read -p "Enter the local file path to upload: " local_file
    read -p "Enter the remote destination path (on EC2): " remote_path
    scp -i "$key_file" "$local_file" "$username@$ec2_ip:$remote_path"
elif [ "$action" == "download" ]; then
    # Prompt for remote and local file paths for download
    read -p "Enter the remote file path (on EC2) to download: " remote_file
    read -p "Enter the local destination path: " local_path
    scp -i "$key_file" "$username@$ec2_ip:$remote_file" "$local_path"
else
    echo "Invalid action. Please enter 'upload' or 'download'."
fi
