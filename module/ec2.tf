resource "aws_instance" "ec2" {
  for_each               = var.ec2
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  availability_zone      = each.value.availability_zone
  key_name               = each.value.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id = aws_subnet.subnet[each.value.subnet_id].id
  associate_public_ip_address = each.value.associate_public_ip_address
  tags = {
    Name = each.value.tags.Name
  }

}
