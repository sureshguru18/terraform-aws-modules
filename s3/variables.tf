variable "tags" {
  type        = map(string)
  default     = {}
  description = <<-EOT
    Additional tag (e.g. `{'BusinessUnit': 'XYZ'}`).
    Neither the tag keys nor the tag values will be modified by this module.
    EOT
}

variable "bucket_name" {
  type        = string
  default     = null
  description = "Bucket name. If provided, the bucket will be created with this name instead of generating the name from the context"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "If provided, S3 bucket will be created." 

}



variable "force_destroy" {
  type        = bool
  default     = false
  description = <<-EOT
    When `true`, permits a non-empty S3 bucket to be deleted by first deleting all objects in the bucket.
    THESE OBJECTS ARE NOT RECOVERABLE even if they were versioned and stored in Glacier.
    EOT
  nullable    = false
}
