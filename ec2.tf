resource "aws_instance" "Jenkins-server" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  user_data              = file("jenkins.sh")
  subnet_id              = module.vpc-jenkins.public_subnets[0]
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  //key_name = "terra-key"
  tags = {
    Name        = var.name
    Environment = var.env
  }
}      