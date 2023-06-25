resource "aws_db_parameter_group" "devops_db" {
  name   = "devops-db"
  family = "postgres14"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "devops_db" {
  identifier             = "devops-db"
  instance_class         = "db.t3.micro"
  allocated_storage      = 10
  engine                 = "postgres"
  engine_version         = "14.1"
  username               = "admin"
  password               = "admin"
  db_subnet_group_name   = aws_db_subnet_group.devops_db.name
  parameter_group_name   = aws_db_parameter_group.devops_db.name
  publicly_accessible    = true
  skip_final_snapshot    = true
}