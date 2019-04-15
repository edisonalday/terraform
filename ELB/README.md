
# AWS Load Balancer Terraform Module 

Terraform module which creates Load balancer on AWS.

These types of resources are supported:

* [ELB](https://www.terraform.io/docs/providers/aws/r/elb.html)
* [ELB Attachment](https://www.terraform.io/docs/providers/aws/r/elb_attachment.html)

## Usage

You can call the module just be itself to run it with all the defaults or specify the 
variables as shown below to modify the defaults. When you specify number_of_instances and instances it attaches the mentioned instances to the load balancer. However, inorder to this to work you need to call the ec2-instance module to create instance first.

```
module "elb_http" {
  source                = "https://github.com/edisonalday/tf-modules/tree/master/ELB"
  name                	= "testprojectelb"
  subnets             	= ["${module.vpc.intra_subnets}"]
  security_groups     	= ["${module.vpc.vpc_security_group_ids}"]
  number_of_instances 	= 2
  instances           	= ["${module.ec2_instance.ids}"]
 }
```

## Required Inputs

The following input variables are required:

### instances

Description: Instances to be associated to the LB

Type: `list`

### number\_of\_instances

Description: Number of instances to attach to ELBs

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### hc\_healthy

Description: Health check healthy threshold

Type: `string`

Default: `"2"`

### hc\_interval

Description: Health check interval time

Type: `string`

Default: `"30"`

### hc\_timeout

Description: Health check time out

Type: `string`

Default: `"5"`

### hc\_unhealthy

Description: Health check unhealthy threshold

Type: `string`

Default: `"2"`

### instance\_port

Description: The instance port where the application runs

Type: `string`

Default: `"80"`

### instance\_protocol

Description: Instance protocol

Type: `string`

Default: `"HTTP"`

### internal

Description: Set true if you want to create a internal load balancer

Type: `string`

Default: `"false"`

### lb\_port

Description: The load balance port

Type: `string`

Default: `"80"`

### lb\_protocol

Description: Load balancer protocol

Type: `string`

Default: `"HTTP"`

### name

Description: Name to be used on all the resources as identifier

Type: `string`

Default: `"myELB"`

### security\_groups

Description: Subnet ID where the isntance has to be created

Type: `list`

Default: `<list>`

### subnets

Description: List of subnets to be associated with the instance

Type: `list`

Default: `<list>`

### target

Description: Load balancer target port for health check

Type: `string`

Default: `"HTTP:80/"`

## Outputs

The following outputs are exported:

### this\_elb\_id

Description: The name of the ELB