# provider "aws" {
#   region = "us-east-1"
# }
resource "aws_vpc" "development-vpc" {
  cidr_block = "10.20.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id            = aws_vpc.development-vpc.id
  cidr_block        = "10.20.1.0/24"
  availability_zone = "us-east-1a"
}

data "aws_vpc" "exising_vpc" {
  default = true
}

# resource "aws_subnet" "dev-subnet2" {
#   vpc_id            = data.aws_vpc.exising_vpc.id
#   cidr_block        = "173.31.48.0/20"
#   availability_zone = "us-east-1a"
# }
