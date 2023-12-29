variable "project_name" {

  description = "Name of the project"
  type = string
}

variable "project_env" {

  description = "environment where project is run"
  type = string
}

variable "instance_type" {

  description = "Instance type"
  type  = string

}

variable "instance_ami" {}

variable "hosted_zone_name" {}

variable "hosted_zone_id" {}

variable "hostname" {}
