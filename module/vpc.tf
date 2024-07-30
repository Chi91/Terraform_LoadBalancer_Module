resource "aws_vpc" "vpc" {
  cidr_block = var.vpc
  tags = {
    Name = "chi-vpc"
  }
}