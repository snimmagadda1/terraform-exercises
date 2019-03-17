# provider "aws" {
#     access_key = "AWS ACCESS KEY"
#     secret_key = "AWS SECRET KEY"
#     region     = "us-east-1"
# }

module "consul" {
    source = "hashicorp/consul/aws"
    version = "0.3.3"

    aws_region  = "us-east-1" # should match provider region
    num_servers = "3"
}