#NESSE ARQUIVO SELECIONAMOS UM GRUPO DE SEGURANÇA DEFAULT E EM SEGUIDA LIBERAMOS O ACESSO TCP PARA A PORTA 80
data "aws_security_group" "security_group" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
}

resource "aws_security_group_rule" "rules" {
  security_group_id = data.aws_security_group.security_group.id

  type        = "ingress"
  protocol    = "TCP"
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 80
  to_port     = 80

}