# Public subnert in AZ-A
resource "aws_subnet" "simon_Puba" {
    vpc_id = aws_vpc.simon_vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        Name = "simon-Pub-A"
    }
}
# Private subnet in AZ-A
resource "aws_subnet" "simon_pria" {
    vpc_id = aws_vpc.simon_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        Name = "simon-pri-a"
    }
}
# Public subnet in AZ-C
resource "aws_subnet" "simon_Pubc" {
    vpc_id = aws_vpc.simon_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        Name = "simon-Pub-C"
    }
}
# Private subnet in AZ-C
resource "aws_subnet" "simon_pric" {
    vpc_id = aws_vpc.simon_vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        Name = "simon-pri-c"
    }
}