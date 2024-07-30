# Terraform_LoadBalancer_Module

# Load Balancer Project with Terraform

This project sets up a load balancer to distribute traffic between two EC2 instances, all defined using Terraform.

## Prerequisites

- Terraform 1.0 or later
- An AWS account with permissions to create EC2 instances and load balancers
- AWS CLI (optional, but recommended)
- SSH key for accessing the EC2 instances

## Installation

- Clone the repository 
   git clone 
   cd load-balancer-terraform

- Set up AWS credentials  - ~/.aws/credentials
    export AWS_ACCESS_KEY_ID=your_access_key
    export AWS_SECRET_ACCESS_KEY=your_secret_key

- Start terraform 
   terraform init
   terraform plan
   terraform apply


