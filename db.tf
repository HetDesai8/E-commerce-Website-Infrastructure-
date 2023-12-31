module "db" {
  source = "terraform-aws-modules/rds/aws"

  engine         = "mysql"
  engine_version = "8.0"

  identifier             = "hetdb"
  db_name                = "hetdb"
  username               = "het"
  password               = "het12345"
  create_random_password = false
  storage_encrypted = false
  port                 = var.mysql_port
  major_engine_version = "8.0"
  family               = "mysql8.0"

  instance_class    = "db.t2.micro"
  allocated_storage = 5
  storage_type      = "gp2"

  create_db_subnet_group = true
  subnet_ids             = module.vpc.private_subnets
  vpc_security_group_ids = [module.db_sg.security_group_id]

  deletion_protection = false
  skip_final_snapshot = true

  tags = {
    Owner = "het.desai@intuitive.cloud"
    Name = "HetDesai"
    # env   = var.env
  }

}
