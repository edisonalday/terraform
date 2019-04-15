resource "aws_s3_bucket" "s3" {
    bucket              	= "${var.bucket}"
    acl                 	= "${var.acl}"
    force_destroy         = "${var.force_destroy}"
    versioning {
      enabled           	= "${var.versioning}"
    }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "${var.sse_algorithm}"
      }
    }
 }
    lifecycle_rule {
    enabled                 = "${var.lifecycle_rule}"
    transition {
      days                  = "${var.transition_days_a}"
      storage_class         = "${var.storage_class_a}"
    }
    transition {
      days                  = "${var.transition_days_b}"
      storage_class         = "${var.storage_class_b}"
    }
  }
    tags                	  = {
    "tag_environment"    	  = "${var.tag_environment}"
    "tag_company"           = "${var.tag_company}"
    "tag_applevel"          = "${var.tag_applevel}"
    "tag_apptype"           = "${var.tag_apptype}"
    "tag_appname"           = "${var.tag_appname}"
    "tag_function"          = "${var.tag_function}"
    "tag_adminname1"        = "${var.tag_adminname1}"
    "tag_adminname2"        = "${var.tag_adminname2}"
    "tag_dbadminname1"      = "${var.tag_dbadminname1}"
    "tag_dbadminname2"      = "${var.tag_dbadminname2}"
    "tag_ec2startstop"      = "${var.tag_ec2startstop}"
    "tag_ec2backup"         = "${var.tag_ec2backup}"
    "tag_createdby"         = "${var.tag_createdby}"
  } 
}

resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket                    = "${aws_s3_bucket.s3.id}"
  policy                    = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
    "Action":[
        "s3:GetObject*",
        "s3:PutObject*",
        "s3:DeleteObject*"
      ],
      "Effect": "Deny",
      "Resource": "${aws_s3_bucket.s3.arn}/*",
      "Condition" : {
        "IpAddress": {
         "aws:SourceIP": "42.60.68.26/32"
         }
        },
        "Principal": "*"
        }
  ]
}
POLICY
}
