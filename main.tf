provider "aws" {
        access_key = "AKIAIT6TLZFEPQ6KLCGQ"
        secret_key = "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"
        region = "ca-central-1"
}

resource "aws_instance" "Terraform_training" {
        ami = "ami-ae55d2ca"
        instance_type = "t2.micro"
        key_name = "nareash"
   
user_data              = "${file("userdata.sh")}"
        tags {
         Name = "Nchefsolo"
        }
}
resource "aws_vpc" "default" {
cidr_block   = "10.0.0.0/16"

  enable_dns_hostnames = true

  tags {

    Name = "tf_test"

  }

}

 

resource "aws_subnet" "tf_test_subnet" {

  vpc_id                  = "${aws_vpc.default.id}"

  cidr_block              = "10.0.0.0/16"

  map_public_ip_on_launch = true
 tags {

    Name = "tf_test_subnet"

  }

}

 

resource "aws_internet_gateway" "gw" {

  vpc_id = "${aws_vpc.default.id}"
  tags {

    Name = "tf_test_ig"

  }

}

 

resource "aws_route_table" "r" {

  vpc_id = "${aws_vpc.default.id}"
route {

    cidr_block = "0.0.0.0/0"

    gateway_id = "${aws_internet_gateway.gw.id}"

  }

tags {

    Name = "aws_route_table"

  }

}

 

resource "aws_route_table_association" "a" {

  subnet_id      = "${aws_subnet.tf_test_subnet.id}"

  route_table_id = "${aws_route_table.r.id}"

  }
