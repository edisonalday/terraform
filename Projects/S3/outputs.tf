output "ids" {
  description = "List of AWS S3 Bucket IDs"
  value       = "${module.s3.ids}"
}

output "bucket_domain_name" {
  description = "List of AWS S3 Bucket Names"
  value       = "${module.s3.bucket_domain_name}"
}

output "arns" {
  description = "List of AWS S3 Bucket ARNs"
  value       = "${module.s3.arns}"
}