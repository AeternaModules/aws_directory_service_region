variable "directory_service_regions" {
  description = <<EOT
Map of directory_service_regions, attributes below
Required:
    - directory_id
    - region_name
    - vpc_settings (block):
        - subnet_ids (required)
        - vpc_id (required)
Optional:
    - desired_number_of_domain_controllers
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    directory_id                         = string
    region_name                          = string
    desired_number_of_domain_controllers = optional(number)
    region                               = optional(string)
    tags                                 = optional(map(string))
    tags_all                             = optional(map(string))
    vpc_settings = object({
      subnet_ids = set(string)
      vpc_id     = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.directory_service_regions : (
        v.desired_number_of_domain_controllers == null || (v.desired_number_of_domain_controllers >= 2)
      )
    ])
    error_message = "must be at least 2"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

