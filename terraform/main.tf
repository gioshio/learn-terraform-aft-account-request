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
