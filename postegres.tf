resource "aws_db_instance" "database" {
  allocated_storage   = 10
  engine              = "postegres"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  name                = "postegres"
  username            = "admin"
  password            = "admin"
  skip_final_snapshot = true
}