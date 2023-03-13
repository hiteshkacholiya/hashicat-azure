
module "network" {
  source  = "app.terraform.io/hk-chip-org/network/azurerm"
  version = "3.5.0"
  resource_group_name = var.resource_group_name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  subnet_service_endpoints = {
    "subnet1" : ["Microsoft.Sql"], 
    "subnet2" : ["Microsoft.Sql"],
    "subnet3" : ["Microsoft.Sql"]
  }

  tags = {
    environment = "dev"
    costcenter  = "it"
  }
}

module "network" {
  
  # insert required variables here
}