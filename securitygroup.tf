#NESSE ARQUIVO SELECIONAMOS UM GRUPO DE SEGURANÇA DEFAULT PARA CRIAÇÃO DA INSTÂNCIA E EM SEGUIDA LIBERAMOS O ACESSO VIA HTTP e SSH
data "aws_security_group" "security_group" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
}


resource "aws_security_group_rule" "HTTP_rule" {
  security_group_id = data.aws_security_group.security_group.id

  type        = "ingress"
  protocol    = "TCP"
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 80
  to_port     = 80
}

resource "aws_security_group_rule" "SSH_rule" {
  security_group_id = data.aws_security_group.security_group.id

  type        = "ingress"
  protocol    = "TCP"
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 22
  to_port     = 22
}

resource "aws_security_group_rule" "DB_rule" {
  security_group_id = data.aws_security_group.security_group.id

  type        = "ingress"
  protocol    = "TCP"
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 5432
  to_port     = 5432
}