data "aws_ssm_parameter" "ubuntu_ami" {
  name = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
}

resource "aws_instance" "app_server" {
  ami                    = data.aws_ssm_parameter.ubuntu_ami.value
  instance_type          = "t2.micro"
  key_name               = "devops-project-key"
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name    = "zero-budget-devops-server"
    Project = "zero-budget-devops"
  }
}
