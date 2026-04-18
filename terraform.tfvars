# Rename this file to terraform.tfvars and update with your actual values

aws_region                     = "ap-south-1"
s3_bucket_name                 = "krutika-clinic-s3-bucket" # Must be globally unique
domain_name                    = "drkrutikaclinic.com"      # Your GoDaddy domain
create_www_subdomain           = true
cloudfront_default_root_object = "index.html"
acm_certificate_arn            = "arn:aws:acm:us-east-1:643955788073:certificate/86ed4e24-eadb-4115-9e68-29461d0db99b"
tags = {
  Project     = "KrutikaClinic"
  Environment = "production"
  ManagedBy   = "Terraform"
}
