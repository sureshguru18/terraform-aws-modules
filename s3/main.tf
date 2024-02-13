resource "aws_s3_bucket" "default" {
  count         = var.enabled ? 1 : 0
  bucket        = var.bucket_name
  force_destroy = var.force_destroy
  tags = var.tags
}
