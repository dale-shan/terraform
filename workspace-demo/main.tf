terraform {
    backend "s3" {
	#Replace this with your bucket name!
	
	bucket = "terraform-up-and-running-state-dale"
	
	key = "workspaces-example/terraform.tfstate"

	region = "us-east-2"


	#Replace this with your DynamoDB table name!

	dynamodb_table = "terraform-up-and-running-locks"

	encrypt = true
    }
}


resource "aws_instance" "example" {
	ami = "ami-0c55b159cbfafe1f0"

	instance_type = "t2.micro"
}

provider "aws" {
	region = "us-east-2"
}
