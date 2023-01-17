variable "resource_group" {
 default = "user-nuqo"
  } 
variable "location"  { 
 default = "East US"
  }  
variable "no_of_vnets"  {
   default = 3
  }

variable "name"{
  type= list
  default = ["A","B","C"]
}