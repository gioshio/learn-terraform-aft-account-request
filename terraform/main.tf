################################# DEV ##################################
  
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

    
    
################################# STAGE ##################################
  
  module "stage" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "drafie+stage@actright.com"
    AccountName               = "Stage"
    ManagedOrganizationalUnit = "Environments"
    SSOUserEmail              = "drafie+stage@actright.com"
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

  account_customizations_name = "stage"
}
