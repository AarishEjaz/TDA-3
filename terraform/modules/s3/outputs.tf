output "bucket_name" {
    value = aws_s3_bucket.website.id 
}

output "bucket_domain_name" {
    value = aws_s3_bucket.website.id.bucket_domain_name
}

output "origin_access_identity_path" {
    value = aws_clourfront_origin_access_identity.oai.access_identity_path
}