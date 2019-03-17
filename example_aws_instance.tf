
# Provide credentials here (by default Terraform will search for saved Credentials in ~/.aws/credentials) if not provided below
# provider "aws" {
#     access_key = "ACCESS_KEY_HERE"
#     secret_key = "SECRET_KEY_HERE"
#     region     = "us-east-1"
# }

resource "aws_instance" "terraform_example" {
    ami           = "ami-b374d5a5"
    instance_type = "t2.micro"
}
