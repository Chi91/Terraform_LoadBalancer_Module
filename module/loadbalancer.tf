resource "aws_lb" "loadbalancer" {
  load_balancer_type         = "application"
  security_groups = [ aws_security_group.sg.id ]
  subnets                    = [for subnet in aws_subnet.subnet : subnet.id]
  enable_deletion_protection = true
  tags = {
    Name = "chi-lb"
  }
}
