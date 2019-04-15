# EC2 Sample Project

This sample project module creates EC2 instance (with EBS volume) into a existing VPC.

This set consists of multiple EC2 instances each with an encrypted EBS volume attached to it. The volume is mounted using the user_data bash script in the variables.tf file.

## Usage

To run this example you first edit the variables.tf file and change the values as needed. Please note that the AMI has to be available in the region you are deploying.

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

### Note

Please note in order to destroy the module, stop the EC2 instance first before running 

```bash
$ terraform destroy
```