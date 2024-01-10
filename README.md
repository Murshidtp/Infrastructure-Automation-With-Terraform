#Infrastructure Automation With Terraform

Overview

This project aims to automate the deployment of infrastructure on AWS using Terraform. The infrastructure includes a Virtual Private Cloud (VPC) and EC2 instances for hosting a web application. Additionally, a Terraform script has been developed to define and deploy these resources.
Features

    Automated Infrastructure Deployment: Use Terraform to automate the creation of a Virtual Private Cloud (VPC) and EC2 instances on AWS.
    Web Application Hosting: Deploy EC2 instances to host a web application.
    Apache Web Server Configuration: Utilize user data to automate the installation and configuration of an Apache web server on an EC2 instance.

Prerequisites

Before you begin, ensure you have the following prerequisites:

    Terraform installed locally.
    AWS account with appropriate credentials and permissions.

Getting Started

    Clone the repository:

    bash

git clone https://github.com/your-username/your-repository.git

Navigate to the project directory:

bash

cd infrastructure-automation-terraform
Before proceeding, it's essential to update the AWS access key and secret key in the main.tf file with your own credentials.

Initialize Terraform:

bash

terraform init

Customize your deployment by modifying the terraform.tfvars file with your AWS credentials and other configuration.

Deploy the infrastructure:

bash

    terraform apply

    Follow the prompts to confirm and apply the changes.

Configuration
Terraform Variables

    aws_access_key: AWS access key for authentication.
    aws_secret_key: AWS secret key for authentication.
    region: AWS region to deploy resources.
    ... (add any additional variables and their descriptions)

Usage

Describe how to use the deployed infrastructure, access the web application, and any other relevant information.
Cleanup

To avoid incurring charges, make sure to destroy the resources when they are no longer needed:

bash

terraform destroy

Follow the prompts to confirm and destroy the resources.
