## Description

This project provides a VPC for educational use only. Its purpose is to *avoid* using the default VPC in Amazon Web Service (AWS).

This repository will deploy a single linux instance. Create a terraform.tfvars file to override the defaults in teh variable.tf file.

Another option is to just modify values directly in the variable.tf file.

## Architecture
AWS Virtual Private Cloud. 

CIDR = 10.22.0.0/16 

Subnet(s):  

Public = 10.22.1.0/24 

Private = 10.22.11.0/24 


Network Address Translation Service 

Internet Gateway Service

Security Group 


EC2 Instance
Operating System: AMI Linux
Version: Latest from AWS
Instance Type: t3
Availability Zone: Public

## Infrastructure As Code (IaC)
Software Platform: Terraform


