data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] 
}

resource "aws_instance" "simon_web1" {
  //ami = "ami-0e4a9ad2eb120e054"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = "tf-key"
  vpc_security_group_ids = [aws_security_group.simon_websg.id]
  availability_zone = "ap-northeast-2a"
  //private_ip = "10.0.1.0/24"
  subnet_id = aws_subnet.simon_Puba.id
  tags = {
    Name = "simon-web1"
  }
  user_data = file("aws_2tier.sh")


}