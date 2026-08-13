output "directory_service_regions_id" {
  description = "Map of id values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_service_regions_desired_number_of_domain_controllers" {
  description = "Map of desired_number_of_domain_controllers values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.desired_number_of_domain_controllers if v.desired_number_of_domain_controllers != null }
}
output "directory_service_regions_directory_id" {
  description = "Map of directory_id values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.directory_id if v.directory_id != null && length(v.directory_id) > 0 }
}
output "directory_service_regions_region" {
  description = "Map of region values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "directory_service_regions_region_name" {
  description = "Map of region_name values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.region_name if v.region_name != null && length(v.region_name) > 0 }
}
output "directory_service_regions_tags" {
  description = "Map of tags values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "directory_service_regions_tags_all" {
  description = "Map of tags_all values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "directory_service_regions_vpc_settings" {
  description = "Map of vpc_settings values across all directory_service_regions, keyed the same as var.directory_service_regions"
  value       = { for k, v in aws_directory_service_region.directory_service_regions : k => v.vpc_settings if v.vpc_settings != null && length(v.vpc_settings) > 0 }
}

