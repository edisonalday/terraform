# RDS MYSQL Sample Project

This sample project module creates RDS MYSQL into a existing VPC.

## Usage

To run this example you first edit the variables.tf file and change the values as needed.


```bash
$ terraform init
$ terraform plan
$ terraform apply
```

## Required Inputs


| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allocated\_storage | The allocated storage in gigabytes | string | n/a | yes |
| identifier | The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier | string | n/a | yes |
| instance\_class | The instance type of the RDS instance | string | n/a | yes |
| password | Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file | string | n/a | yes |
| subnet\_ids | A list of VPC subnet IDs | list | `<list>` | no |
| username | Username for the master DB user | string | n/a | yes |
| vpc\_security\_group\_ids | List of VPC security groups to associate | list | `<list>` | no |
	
### Note

Please note in order to destroy the module run the: 

```bash
$ terraform destroy
```