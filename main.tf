resource "aws_instance" "instance1" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  tags = {
    Name = var.ins-name
  }
}
resource "aws_s3_bucket" "name" {
  bucket = var.s3-name
}
resource "aws_eip" "name" {
  tags = {
    Name = var.eip-name
  }
}
