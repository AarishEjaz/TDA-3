variable "cloudfront_config" {
    type = object({
      bucket_name = string
      bucket_domain_name = string
      origin_access_identity_path = string
      price_class = string
      custom_domain = string
      acm_certificate_arn = string
    })
  
}

variable "environment" {
  type = string
}

variable "aws_region" {
  type = string
  
}

variable "alb_config" {

  type = object({
    public_subnet_ids = list(string)
    certificate_arn = string 
  })
  
}

variable "instance_config" {
  type = object({
    vpc_id = string 
  })
}