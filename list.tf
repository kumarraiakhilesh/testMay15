terraform {
	  required_providers {
		azurerm = {
		  source  = "hashicorp/azurerm"
		  version = "4.70.0"
		}
	  }
    backend "azurerm" {
      resource_group_name = "Rg15may"
      storage_account_name = "test15st"
      container_name = "may15cont"
      key = "15may.tfstate"
      
    }
  }

provider "azurerm" {
    features {}
  
    }  
resource"azurerm_resource_group" "assinetest" {
    for_each = toset(var.roja)
  name = each.value
  location =var.location
}
variable "roja" {}
variable "location" {}

