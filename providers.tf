terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }  
}


provider "azurerm" {
  version = ">1.25"
  features {}
}


resource "azurerm_virtual_network" "example" {
    name="vnet-${element(var.name,count.index)}"
    resource_group_name = "${var.resource_group}"
    location = "${var.location}"
    address_space=["10.0.0.0/16"]
    count = "${var.no_of_vnets ==3 ? 3 : 0}"
    
}



