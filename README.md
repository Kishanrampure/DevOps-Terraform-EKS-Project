
# Terraform - provision - EKS - Cluster

This project utilizes Terraform to automate the creation and configuration of an Amazon Elastic Kubernetes Service (EKS) cluster.

## Prerequisites
- Install JKD 17
- Install Jenkins
- Install Git
- Install AWS CLI
- Install EKSCLI
- Install Terraform
- Install Kubectl

## Provisioning Jenkins-Server on EC2
```bash
-> git clone https://github.com/Kishanrampure/DevOps-Terraform-EKS-Project.git
-> cd DevOps-Terraform-EKS-Project/jenkins-server
-> terraform init
-> terraform fmt
-> terraform validate
-> terraform plan
-> terraform apply --auto-approve
```
## Setup Jenkins and AWS CLI installation
 - [Setup AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

 - [Setup Jenkins (DigitalOcean Link)](https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-22-04)

 
## Install Plugins on Jenkins

- Eclipse Temurin installerVersion
- Build Timestamp
- AWS Credentials
- Amazon Web Services SDK :: All

## Add credentials

#### Create an AWS IAM user, assign necessary permissions, and generate access keys.
 
1. In Jenkins, navigate to the "Credentials" section.
2. Click "+ Add Credentials."
3. Select the "Secret text" credential type.
4. In the "ID" field, enter "Access key ID."
5. In the "Secret" field, paste your AWS Access Key ID.
6. In the "Name" field, enter "AWS_ACCESS_KEY_ID."
####
![AWS AK](https://github.com/Kishanrampure/DevOps-Terraform-EKS-Project/assets/121344253/55ac697b-17e8-4a8c-8bea-78de1a39ae87)

####

1. Navigate to the "Credentials" section.
2. Click on "+ Add credentials".
3. Select the "Secret text" credential type.
4. In the "ID" field, enter "Secret access key ID".
5. In the "Name" field, enter "AWS_SECRET_ACCESS_KEY".
####
![AWS SAK](https://github.com/Kishanrampure/DevOps-Terraform-EKS-Project/assets/121344253/424ece50-3530-4ca4-9d1a-d9b800f56548)

####
| Name             | ID                                                                |
| ----------------- | ------------------------------------------------------------------ |
| AWS_ACCESS_KEY_ID | <Access key ID> |
| AWS_SECRET_ACCESS_KEY | <Secret access key ID> |

## Repository Configure in Jenkins Pipeline
> Create a Jenkins Pipeline Job  
![EKS parameters jenkins](https://github.com/Kishanrampure/DevOps-Terraform-EKS-Project/assets/121344253/69c4c94c-c896-4718-b777-ccc5946a0604)
####
####
![Jenkins repo setup eks](https://github.com/Kishanrampure/DevOps-Terraform-EKS-Project/assets/121344253/7bcc2598-8341-4136-ae3d-3fb9d76f2290)

####

#### Run the Jenkins Job/Pipeline
> After the run succeeds

## Connect to the cluster and verify
- [x] Setup Connection to created EKS cluster in with your local machine or cloud shell.
- [x] Copy the URL from AWS load balancer, paste it into your browser, and verify that application is deployed.

### Cleanup
```sh
terraform destroy --auto-approve
```