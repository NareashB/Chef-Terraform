provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "ca-central-1"
}


resource "aws_instance" "Terraform_training" {
        ami = "ami-9062d0f4"
        instance_type = "t2.micro"
        key_name = "nareash"

user_data = "${file("Nuserdata.sh")}"
        tags {
         Name = "chef-practice"
        }
}
resource "aws_vpc" "default" {
cidr_block   = "${var.vpc_cidr}"

  enable_dns_hostnames = true

  tags {

    Name = "tf_test"

  }

}

 

resource "aws_subnet" "tf_test_subnet" {

  vpc_id                  = "${aws_vpc.default.id}"

  cidr_block              = "${var.public_subnet_cidr}"

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


# for second instance in different subnet
resource "aws_vpc" "default" {
cidr_block   = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags {
    Name = "tf_test"
  }
}
resource "aws_subnet" "tf_test_subnet" {
  vpc_id                  = "${aws_vpc.default.id}"
  cidr_block              = "${var.public_subnet_cidr1}"
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
}

tags {

    Name = "aws_route_table"

  }

}

