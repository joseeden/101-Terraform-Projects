# Variables for setting up terraform
aws_region     = "ap-southeast-1"
my_credentials = ["/mnt/c/Users/Eden.Jose/.aws/credentials"]
my_profile     = "tf-user"

# Variables for creating the VPC and EC2 instances
avail_zones   = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
instance_type = "t3.micro"