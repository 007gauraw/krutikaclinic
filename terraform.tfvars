# Rename this file to terraform.tfvars and update with your actual values

aws_region                     = "ap-south-1"
s3_bucket_name                 = "krutika-clinic-s3-bucket" # Must be globally unique
domain_name                    = "drkrutikaclinic.com"      # Your GoDaddy domain
create_www_subdomain           = true
cloudfront_default_root_object = "index.html"
aws_role_arn                   = "arn:aws:iam::643955788073:role/github-actions-krutika-clinic"

tags = {
  Project     = "KrutikaClinic"
  Environment = "production"
  ManagedBy   = "Terraform"
}
