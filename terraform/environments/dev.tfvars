environment = "dev"

aws_region = "ap-south-1"

cloudfront_config = {
    bucket_name = "my-aarish-tf-test-bucket"
    custom_domain = "test.programmingbeast.com"
    price_class = "PriceClass_100"
    acm_certificate_arn = "arn:aws:acm:us-east-1:658741521186:certificate/8c4e9ff0-addf-40a7-9471-f960be7bd46c"
}