resource "aws_route_table" "example" {
  vpc_id = aws_vpc.simon_vpc.id


  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.simon-igw.id
    }
  

  tags = {
    Name = "simon-route-table"
  }
}