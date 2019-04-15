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
    "Name"    	            = "${var.tag_environment}"
    "Company"               = "${var.tag_company}"
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
         "aws:SourceIP": ""
         }
        },
        "Principal": "*"
        }
  ]
}
POLICY
}
