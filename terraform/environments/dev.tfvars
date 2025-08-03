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

instance_config = {
    vpc_id="vpc-005a5bb653287e80f"
}

alb_config = {
    public_subnet_ids = ["subnet-0feeed73d791fb5a6","subnet-0b7b947f70b571b0a","subnet-06768d8197d5c6de7"]
    certificate_arn = "arn:aws:acm:ap-south-1:658741521186:certificate/c6885461-47cb-40aa-90db-75dc5d55b3c0"
}