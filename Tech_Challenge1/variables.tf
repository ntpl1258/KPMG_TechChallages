variable "RGName" {

    type = string
    description = "Test" 
  
}
variable "subscription_id" {
    type = string
    description = "Test"
  
}
variable "tenent_id" {
  type =string

}
variable "client_id" {
  
  type = string
}
variable "client_secret" {
  type = string
}
variable "location" {
    type = string
  
}

variable "VnetName"{
    type = string
}

variable "prefix" {

    type = string
    default = "Dev"
    description = "Prefix Value"
  
}

variable "instance_tags" {
  type = object({

    name=string
    foo=number
     
  })

  
}
variable "administrator_login"{
    type = string
}

variable "administrator_login_password"{
    type = string
}

