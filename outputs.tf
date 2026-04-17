output "s3_bucket_name" {
  value       = aws_s3_bucket.website.id
  description = "S3 bucket name for hosting the website"
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.website.arn
  description = "S3 bucket ARN"
}

output "cloudfront_domain_name" {
  value       = aws_cloudfront_distribution.website.domain_name
  description = "CloudFront distribution domain name"
}

output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.website.id
  description = "CloudFront distribution ID"
}

output "route53_zone_id" {
  value       = aws_route53_zone.main.zone_id
  description = "Route 53 hosted zone ID"
}

output "route53_nameservers" {
  value       = aws_route53_zone.main.name_servers
  description = "Route 53 nameservers to configure in GoDaddy"
}

output "website_url" {
  value       = "https://${var.domain_name}"
  description = "Website URL (after DNS propagation)"
}
