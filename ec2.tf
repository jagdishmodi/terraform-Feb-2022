resource "aws_instance" "s3_ec21" {
  ami           = each.value
  for_each = {
    first_vm = "ami-033b95fb8079dc481"
    second_vm = "ami-04505e74c0741db8d"
  }
 
  instance_type = "t2.micro"
  
  tags = {
    #Name = each.key
  }
}



