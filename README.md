# StartTech Infrastructure Setup

## Project Overview

This repository contains the Infrastructure as Code (IaC) setup for the StartTech DevOps assessment using Terraform on AWS.

The infrastructure provisions:

- VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Security Groups
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- EC2 Backend Servers
- S3 Bucket for Frontend Hosting
- CloudFront CDN
- ElastiCache Redis Cluster
- CloudWatch Monitoring

---

# Architecture Overview

The infrastructure follows a highly available and secure architecture:

- Public subnet contains:
  - Application Load Balancer
  - NAT Gateway

- Private subnets contain:
  - Backend EC2 instances
  - Redis cluster

- Frontend React application is hosted on:
  - Amazon S3
  - Distributed globally through CloudFront CDN

- Backend Golang API is:
  - Containerized using Docker
  - Deployed on EC2 Auto Scaling Group
  - Accessible only through ALB

---

# Technologies Used

- AWS
- Terraform
- GitHub Actions
- Docker
- CloudWatch
- Redis
- MongoDB Atlas

---

# Folder Structure

```text
starttech-infra/
├── .github/
│   └── workflows/
│       └── infrastructure-deploy.yml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   └── terraform.tfvars
├── monitoring/
│   ├── cloudwatch-dashboard.json
│   ├── alarm-definitions.json
│   └── log-insights-queries.txt
├── ARCHITECTURE.md
├── RUNBOOK.md
└── README.md