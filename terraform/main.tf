module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "drafiedev@actright.com"
    AccountName               = "Development"
    ManagedOrganizationalUnit = "Environments"
    SSOUserEmail              = "drafiedev@actright.com"
    SSOUserFirstName          = "drafie"
    SSOUserLastName           = "dev"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Env" = "Dev"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

  
  module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "drafie+dev2@actright.com"
    AccountName               = "Dev"
    ManagedOrganizationalUnit = "Environments"
    SSOUserEmail              = "drafie+dev2@actright.com"
    SSOUserFirstName          = "drafie"
    SSOUserLastName           = "dev"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Env" = "Dev"
  }

  change_management_parameters = {
    change_requested_by = "Gio Shio"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "dev"
}
