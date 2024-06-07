########################################################################################################################
## Bastion host SG and EC2 Instance
########################################################################################################################

resource "aws_security_group" "bastion_host" {
  name        = "${var.namespace}_SecurityGroup_BastionHost"
  description = "Bastion host Security Group"
  vpc_id      = aws_vpc.non_prod_vpc.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = var.environment
  }
}

resource "aws_instance" "bastion_host" {
  ami                         = data.aws_ami.amazon_linux_2.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public[0].id
  associate_public_ip_address = true
  key_name                    = "QA-prod"
  vpc_security_group_ids      = [aws_security_group.bastion_host.id]

  tags = {
    Name     = "${var.namespace}_EC2_BastionHost"
  
  }
}
