
variable "env" {

    description = "The env for tags"
     default = "Prod"
}

provider "aws" {
  # Configuration options
  region  = "ap-south-1"
  profile = "default"
}


