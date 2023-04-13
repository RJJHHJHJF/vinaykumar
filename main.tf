provider "aws" {
        region = "ap-south-1"
}

terraform {
backend "s3"  {
            bucket = "terraform-vinay-bucket"               
            key = "terraform"                  
            region = "ap-south-1"
}
}

resource "aws_instance" "tf_backend_inst"{
        instance_type = "t2.micro"
        ami = "ami-03a933af70fa97ad2"
        tags = {
                Name = "tf_backend_inst"
        }

}


