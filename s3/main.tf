resource "aws_s3_bucket" "default" {
  count         = var.enabled ? 1 : 0
  bucket        = var.bucket_name
  force_destroy = var.force_destroy

  object_lock_enabled = var.object_lock_enabled

  tags = var.tags
}
