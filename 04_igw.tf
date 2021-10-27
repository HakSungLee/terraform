resource "aws_internet_gateway" "simon-igw" {
  vpc_id = aws_vpc.simon_vpc.id

  tags = {
    Name = "simon-igw"
  }
}