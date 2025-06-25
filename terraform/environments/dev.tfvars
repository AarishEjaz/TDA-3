environment = "dev"

aws_region = "ap-south-1"

cloudfront_config = {
    bucket_name = "todo-test-bucket-aarish-7548"
    # regional_bucket_domain_name = string
    custom_domain = "test.programmingbeast.com"
    price_class = "PriceClass_100"
    acm_certificate_arn = "arn:aws:acm:us-east-1:658741521186:certificate/8c4e9ff0-addf-40a7-9471-f960be7bd46c"
    bucket_domain_name = ""
    origin_access_identity_path = ""
}