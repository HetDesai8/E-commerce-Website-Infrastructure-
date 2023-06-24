# resource "aws_instance" "web_ec2_1" {
#   ami                         = data.aws_ami.jay-ec2.id
#   instance_type               = "t2.micro"
#   subnet_id                   = module.vpc.public_subnets[0]
#   vpc_security_group_ids      = [module.web_sg.security_group_id]
# #   key_name                    = aws_key_pair.web_key.key_name
#   associate_public_ip_address = true
#   availability_zone = "us-east-1a"
#   tags = {
#     Name  = "het desai web EC2"
#     Owner = "desaihet8@gmail.com"
#   }
#   user_data = file("${path.module}/userdata.sh")

# }

# output "ec2id" {
#   value = aws_instance.web_ec2_1.id
# }

# # 