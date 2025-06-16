variable "cloudfront_config" {
    type = object({
      bucket_domain_name = string
      bucket_name = string
      price_class = string
      origin_access_identity_path = string
      custom_domain = string
      acm_certificate_arn = string

    })
}

variable "environment" {
  type= string
}

# variable "price_class" {
#   type = string
#   default = "PriceClass_100"
  
# }