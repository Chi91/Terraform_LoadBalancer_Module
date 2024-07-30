module "vpc1" {
  source         = "../module"
  vpc            = "10.0.0.0/16"
  ami-image-name = "ami-026c3177c9bd54288"
  instance_type  = "t2.micro"
  subnet = {
    public_subnet1 = {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "eu-central-1a"
    }
    public_subnet2 = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "eu-central-1b"
    }
  }
  ec2 = {
    chi_server1 = {
      ami                         = "ami-026c3177c9bd54288"
      instance_type               = "t2.micro"
      key_name                    = "chi_multipleserver_lb"
      availability_zone           = "eu-central-1a"
      subnet_id                   = "public_subnet1"
      associate_public_ip_address = true
      tags = {
        Name = "chi_server1"
      }
    }
    chi_server2 = {
      ami                         = "ami-026c3177c9bd54288"
      instance_type               = "t2.micro"
      key_name                    = "chi_multipleserver_lb"
      availability_zone           = "eu-central-1b"
      subnet_id                   = "public_subnet2"
      associate_public_ip_address = true
      tags = {
        Name = "chi_server2"
      }
    }
  }

}