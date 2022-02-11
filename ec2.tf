resource "aws_instance" "s3_ec21" {
  ami           = each.value
  for_each = {
    first_vm = "ami-033b95fb8079dc481"
    second_vm = "ami-04505e74c0741db8d"
  }
  user_data = file("./app1-install.sh")
  instance_type = "t2.micro"
  
  tags = {
    Name = each.key
  }
}

resource "aws_iam_user" "the-accounts" {
  for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
  name     = each.key
 
}

