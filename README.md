
# Bash Script Collection

This folder contains three Bash scripts that serve different purposes: a simple calculator, a file transfer utility, and an SSH connection tool.

## 1. Calculator Script (`calc.sh`)

### Description
This Bash script functions as a simple calculator, providing operations for addition, subtraction, multiplication, division, power (exponentiation), and square root calculations.

### Usage
- Run the script and choose an operation from the menu.
- Enter the numbers as prompted.
- The script will return the result of the selected operation.

### Requirements
- `bc` (Basic Calculator) must be installed for the script to perform calculations, especially for floating-point arithmetic.

### Example
```bash
./calc.sh
```

---

## 2. File Transfer Script (`file_transfer.sh`)

### Description
This Bash script facilitates secure file transfers between your local machine and an Amazon EC2 instance using `scp`. The script can handle both uploading files to the EC2 instance and downloading files from the EC2 instance.

### Usage
- Run the script and follow the prompts to specify the EC2 instance's public IP address, the path to your SSH key pair file, and the username.
- Choose whether to upload or download a file, and provide the file paths as requested.

### Requirements
- Ensure your SSH key pair file has the correct permissions:
  ```bash
  chmod 400 /path/to/keypair.pem
  ```
- `scp` (Secure Copy Protocol) must be installed and properly configured on your system.

### Example
```bash
./file_transfer.sh
```

---

## 3. SSH Connection Script (`ssh_connect.sh`)

### Description
This Bash script establishes a secure SSH connection to an Amazon EC2 instance. The script prompts you for the necessary details such as the instance's public IP, the path to the SSH key pair, and the username.

### Usage
- Run the script and follow the prompts to enter the EC2 instance's public IP address, the path to your SSH key pair file, and the username.
- The script will establish an SSH connection to the specified EC2 instance.

### Requirements
- Ensure your SSH key pair file has the correct permissions:
  ```bash
  chmod 400 /path/to/keypair.pem
  ```

### Example
```bash
./ssh_connect.sh
```

---
