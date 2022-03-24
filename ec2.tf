resource "aws_instance" "s3_ec21" {
  ami           = each.value
  for_each = {
    first_vm = "ami-04893cdb768d0f9ee"
    second_vm = "ami-04a223c5825a793bc"
  }
 
  instance_type = "t3.large"
  
  tags = {
    Name = each.key
  }
}



