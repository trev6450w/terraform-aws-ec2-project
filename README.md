# AWS Infrastructure Terraform Project

This project uses Terraform to provision and manage infrastructure on Amazon Web Services (AWS). It sets up a Virtual Private Cloud (VPC), creates an EC2 instance with a specified OS, and configures Route 53 DNS settings for a specified domain.

## Prerequisites

Before you begin, ensure you have the following:
1. An Amazon Web Services account
2. AWS CLI installed and configured
3. Terraform installed (version 0.12+)
4. A registered domain name (for Route 53 configuration)

## Setup

### Install and Configure AWS CLI

If you haven't already, install the AWS CLI by following the [official documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

After installation, configure the AWS CLI:

```bash
aws configure
```
## Prepare Terraform Variables 
First, create a terraform.tfvars file

Follow this format:
```
region           = "us-west-2"
domain_name      = "your-domain.com"
instance_type    = "t2.micro"
aws_access_key   = "your-aws-access-key"
aws_secret_key   = "your-aws-secret-key"
os_name          = "ubuntu"
os_version       = "20.04"
```
## Usage
1. Initialize Terraform: ```terraform init```
2. Preview the changes: ```terraform plan```
3. Apply the configuration: ```terraform apply```
4. To remove all resources created: ```terraform destroy```

## Project Structure
- main.tf: Main Terraform configuration file
- variables.tf: Variable definitions
- terraform.tfvars: Variable values

# Available OS Options
The os_name variable in terraform.tfvars can be set to:

- "ubuntu" (default)
- "amazon-linux-2"

When using "ubuntu", you can specify the os_version. For "amazon-linux-2", the version is always the latest.

## What this specific project does
- Creates a VPC with a public subnet
- Sets up security group rules for inbound traffic (ports 22, 80, 443)
- Launches an EC2 instance (t2.micro) with the specified OS (default: Ubuntu 20.04)
- Generates a new SSH key pair for the instance
- Creates Route 53 zone and records for the specified domain
- Automatically installs Docker
- Outputs instance IP, SSH keys, and nameservers

