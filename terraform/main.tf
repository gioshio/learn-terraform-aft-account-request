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
    SSOUserLastName           = "stage"
  }

  account_tags = {
    "Env" = "Stage"
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
    
    
################################# PROD ##################################
    
module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "drafie+prod@actright.com"
    AccountName               = "Prod"
    ManagedOrganizationalUnit = "Environments"
    SSOUserEmail              = "drafie+prod@actright.com"
    SSOUserFirstName          = "drafie"
    SSOUserLastName           = "prod"
  }

  account_tags = {
    "Env" = "Prod"
  }

  change_management_parameters = {
    change_requested_by = "Gio Shio"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "prod"
}
