variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for hosting the static website"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9-]*[a-z0-9]$", var.s3_bucket_name))
    error_message = "S3 bucket name must be valid (lowercase, no leading/trailing hyphens)."
  }
}

variable "domain_name" {
  description = "Domain name (e.g., example.com)"
  type        = string
}

variable "create_www_subdomain" {
  description = "Whether to create www subdomain record"
  type        = bool
  default     = true
}

variable "cloudfront_default_root_object" {
  description = "Default root object for CloudFront"
  type        = string
  default     = "index.html"
}

variable "cloudfront_default_ttl" {
  description = "Default TTL for CloudFront cache"
  type        = number
  default     = 3600
}

variable "cloudfront_max_ttl" {
  description = "Max TTL for CloudFront cache"
  type        = number
  default     = 86400
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM SSL certificate for CloudFront"
  type        = string
}

variable "enable_versioning" {
  description = "Enable S3 bucket versioning"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Project     = "KrutikaClinic"
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}
