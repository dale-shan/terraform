variable "db_remote_state_bucket" {
	description = "The name of the s3 bucket used for  the database's remote state storage"

	type = string

	default = "terraform-up-and-running-state-dale"

}


variable "db_remote_state_key" {

	description = "The name of the key in the s3 bucket used for the database's remote stage storage"

	type = string
	
	default = "workspace-example/terraform.tfstate"

}


variable "cluster_name" {

	description = "The name to use to namespace all the resources in the cluster"

	type = string

	default = "webservers-stage"

}


