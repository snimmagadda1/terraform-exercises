
# Provide credentials here (by default Terraform will search for saved Credentials in ~/.aws/credentials) if not provided below
# provider "aws" {
#     access_key = "ACCESS_KEY_HERE"
#     secret_key = "SECRET_KEY_HERE"
#     region     = "us-east-1"
# }

resource "aws_instance" "terraform_example" {
    ami           = "${lookup(var.amis, var.region)}"
    instance_type = "t2.micro"

    provisioner "local-exec" {
    command = "echo ${aws_instance.terraform_example.public_ip} > ip_address.txt"
}
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.terraform_example.id}"
}