output "ids" {
  description = "List of AWS S3 Bucket IDs"
  value       = "${aws_s3_bucket.s3.*.id}"
}

output "bucket_domain_name" {
  description = "List of AWS S3 Bucket Domain Names"
  value       = "${aws_s3_bucket.s3.*.bucket_domain_name}"
}

output "arns" {
  description = "List of AWS S3 Bucket ARNs"
  value       = "${aws_s3_bucket.s3.*.arn}"
}