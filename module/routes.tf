resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "chi_route"
  }
}

resource "aws_route_table_association" "chi_server1" {
    route_table_id = aws_route_table.public_route.id
    subnet_id = aws_subnet.subnet["public_subnet1"].id
}

resource "aws_route_table_association" "chi_server2" {
    route_table_id = aws_route_table.public_route.id
    subnet_id = aws_subnet.subnet["public_subnet2"].id
}