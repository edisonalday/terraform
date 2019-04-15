## Required Inputs

The following input variables are required:

### ami

Description: Amazon Machine ID used for provisioning the instance

Type: `string`

Default: `"ami-06e7b9c5e0c4dd014"`

### instance\_type

Description: Type of instance to be provisioned

Type: `string`

Default: `"t2.micro"`

### name

Description: Tag the instance with this name

Type: `string`

Default: `"terraform-instance"`

### vpc\_security\_group\_ids

Description: Subnet ID where the isntance has to be created

Type: `list`

Default: `[]`

## Optional Inputs

The following input variables are optional (have default values):


### block\_device\_names

Description: Enter the block device name (refer to aws doc)- the total default names should be equal to the ebs_count value

Type: `string`

Default: `"xvdh"`

### ebs\_count

Description: Enter the number EBS volumes to attach to the instance

Type: `string`

Default: `"2"`

### ebs\_size

Description: Size of the EBS volumes. This has to be consisten with EBS_count and block_device_names

Type: `string`

Default: `"100"`

### ebs\_type

Description: EBS type

Type: `string`

Default: `"gp2"`

### iam\_instance\_profile

Description: iam role to enable ec2 to access s3

Type: `string`

Default: `"Full_S3_access_from_EC2"`

### instance\_count

Description: Number of amazon instance to be provisioned

Type: `string`

Default: `"2"`


### key\_name

Description: Type key to be used for ssh

Type: `string`

Default: `""`

### subnet\_ids

Description: List of subnets to be associated with the instance

Type: `list`

Default: `[]`