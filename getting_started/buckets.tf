resource "aws_s3_bucket" "dev4" {
  bucket = "labs3c273-dev4"
  
  tags = {
    Name = "labs3c273-dev4"
  }
}
