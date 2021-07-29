provider "aws" {
	region = "us-east-2"
}



terraform {

  backend "s3" {
        # replace this with your bucket name!
        
        bucket = "terraform-up-and-running-state-dale"

        key = "workspace-example/terraform.tfstate"

        region = "us-east-2"


        # replace this with your DynamoDB table name!

	dynamodb_table = "terraform-up-and-running-locks"
    
        encrypt = true
    }
}



resource "aws_db_instance" "example" {
	identifier_prefix = "terraform-up-and-running"

	engine = "mysql"


	allocated_storage= 10


	instance_class = "db.t2.micro"

	name = var.db_name

	username = "admin"


	password = var.db_password

	skip_final_snapshot = true

}
