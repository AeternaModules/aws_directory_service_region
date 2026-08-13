resource "aws_directory_service_region" "directory_service_regions" {
  for_each = var.directory_service_regions

  directory_id                         = each.value.directory_id
  region_name                          = each.value.region_name
  desired_number_of_domain_controllers = each.value.desired_number_of_domain_controllers
  region                               = each.value.region
  tags                                 = each.value.tags
  tags_all                             = each.value.tags_all

  vpc_settings {
    subnet_ids = each.value.vpc_settings.subnet_ids
    vpc_id     = each.value.vpc_settings.vpc_id
  }
}

