provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "ap-southeast-2"
}
terraform {
  backend "local" {}
}
resource "aws_vpc" "VPC" {

	cidr_block = "${var.vpc_cidr}"
	enable_dns_hostnames = true
		tags {
			  "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
		}
}
resource "aws_subnet" "public" {
    vpc_id = "${aws_vpc.VPC.id}"

    cidr_block = "${var.public_subnet_cidr}"
    availability_zone = "${var.AZ1}"

    tags {
         "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}
resource "aws_internet_gateway" "InternetGateway" {
    vpc_id = "${aws_vpc.VPC.id}"
	tags {
          "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}
resource "aws_route_table" "public" {
    vpc_id = "${aws_vpc.VPC.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.InternetGateway.id}"
    }

    tags {
          "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}

resource "aws_route_table_association" "public" {
    subnet_id = "${aws_subnet.public.id}"
    route_table_id = "${aws_route_table.public.id}"
}
resource "aws_network_acl" "public" {
   vpc_id = "${aws_vpc.VPC.id}"
   subnet_ids = ["${aws_subnet.public.id}"]
  
  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }
  tags {
      "Name" = "${var.orgName}"
	"Organisation" = "${var.orgName}"
  }
}

resource "aws_subnet" "private" {
    vpc_id = "${aws_vpc.VPC.id}"

    cidr_block = "${var.private_subnet_cidr}"
    availability_zone = "${var.AZ1}"

    tags {
          "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}

resource "aws_eip" "eip" {
  
  
}
resource "aws_nat_gateway" "NAT" {
  subnet_id = "${aws_subnet.private.id}"
  allocation_id = "${aws_eip.eip.id}"
  
   tags {
     "Name" = "${var.orgName}"
	"Organisation" = "${var.orgName}"
  }
}

resource "aws_route_table" "private" {
    vpc_id = "${aws_vpc.VPC.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_nat_gateway.NAT.id}"
    }

    tags {
		"Network" = "private"
         "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}

resource "aws_route_table_association" "private" {
    subnet_id = "${aws_subnet.private.id}"
    route_table_id = "${aws_route_table.private.id}"
	
	
}

resource "aws_network_acl" "private" {
  vpc_id = "${aws_vpc.VPC.id}"
  subnet_ids = ["${aws_subnet.private.id}","${aws_subnet.private2.id}"]
 
  egress {
    protocol   = "6"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }

  ingress {
    protocol   = "6"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }
  tags {
     "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
  }
}

resource "aws_subnet" "private2" {
    vpc_id = "${aws_vpc.VPC.id}"

    cidr_block = "${var.private_subnet2_cidr}"
    availability_zone = "${var.AZ2}"

    tags {
        "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}


resource "aws_route_table_association" "private2" {
    subnet_id = "${aws_subnet.private2.id}"
    route_table_id = "${aws_route_table.private.id}"
}




resource "aws_security_group" "BastionSG" {
    name = "${var.orgName}-BastionSG"
    description = "Enable SSH or RDP"

   
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
	 ingress {
        from_port = 5000
        to_port = 5000
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
	 ingress {
        from_port = 8443
        to_port = 8443
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
     ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
     ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
     ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
     ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
	   egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
    

    vpc_id = "${aws_vpc.VPC.id}"

    tags {
        "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }

}

resource "aws_security_group" "APIGWSG" {
    name = "${var.orgName}-APIGWSG"
    description = "Enable SSH or RDP"

   
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
	    ingress {
        from_port = 443
        to_port = 44
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
	
	  egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }    

    vpc_id = "${aws_vpc.VPC.id}"

    tags {
        "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}

resource "aws_security_group" "ServersSG" {
    name = "${var.orgName}-ServersSG"
    description = "Security group for the servers hosting the APIs"

    vpc_id = "${aws_vpc.VPC.id}"
	
	 ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
	    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
	    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
		egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["${var.SourceCidrForRDP}"]
    }
    
    tags {
        "Name" = "${var.orgName}"
		"Organisation" = "${var.orgName}"
    }
}



resource "aws_instance" "BastionHost" {
 
	ami  = ""
	key_name = "${var.aws_key_name}"
  instance_type = "m4.10xlarge"
  subnet_id  = "${aws_subnet.public.id}"  
  security_groups = ["${aws_security_group.BastionSG.id}"] 
  associate_public_ip_address = true
    source_dest_check = false 

	root_block_device {
			volume_type = "io1"
			iops = "200"
			delete_on_termination = true
			volume_size = "100"
    }	
    tags {
	"Name" = "${var.orgName}"
	"Organisation" = "${var.orgName}"
	"Description" = "Terraform Testing instance"
	"Type" = "FinOS Bastion"
	}
	user_data = "${file("Nuserdata.sh")}"	
}
output "address" {
  value = "${aws_instance.BastionHost.public_dns}"
}

