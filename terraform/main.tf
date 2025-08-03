module "static_website" {
    source = "./modules/s3"
    bucket_name = var.cloudfront_config.bucket_name
    environment = var.environment

}

module "cdn" {
    source = "./modules/cloudfront"
    cloudfront_config = {
        custom_domain = var.cloudfront_config.custom_domain
        acm_certificate_arn = var.cloudfront_config.acm_certificate_arn
        bucket_name = module.static_website.bucket_domain_name
        bucket_domain_name = module.static_website.bucket_domain_name
        origin_access_identity_path = module.static_website.origin_access_identity_path
        regional_bucket_domain_name = module.static_website.regional_domain_name
        price_class = var.cloudfront_config.price_class
    }
    environment = var.environment
}

module "alb" {
    source = "./modules/alb"
    environment = var.environment
    alb_config = {
      vpc_id = var.instance_config.vpc_id
      public_subnet_ids = var.alb_config.public_subnet_ids
      certificate_arn = var.alb_config.certificate_arn
    }
}