# Resources or Main configs of the ROOT module 
# This is the main configuration takes place
# See Resources and Modules documentation on Terraform

module "your_root_module" {

  # local path
  source = "./modules/module-child-a/"
  # Or from Terraform Registry. See @https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
  # source  = "terraform-aws-modules/vpc/aws"
  child_cidr = var.root_cidr
  child_name = var.root_name

  # tags - is not used in the actual AWS VPC
  child_tags = var.root_tags
}
