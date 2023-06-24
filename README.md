# E-commerce-Website-Infrastructure-
Highly scalable and Highly Available infrastructure to host a 3-tier E-commerce website which will be accessed by millions of users

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | terraform-aws-modules/alb/aws | ~> 8.0 |
| <a name="module_alb_record"></a> [alb\_record](#module\_alb\_record) | terraform-aws-modules/route53/aws//modules/records | ~> 2.0 |
| <a name="module_app_sg"></a> [app\_sg](#module\_app\_sg) | terraform-aws-modules/security-group/aws | n/a |
| <a name="module_asg"></a> [asg](#module\_asg) | terraform-aws-modules/autoscaling/aws | n/a |
| <a name="module_db"></a> [db](#module\_db) | terraform-aws-modules/rds/aws | n/a |
| <a name="module_db_sg"></a> [db\_sg](#module\_db\_sg) | terraform-aws-modules/security-group/aws | n/a |
| <a name="module_rds_record"></a> [rds\_record](#module\_rds\_record) | terraform-aws-modules/route53/aws//modules/records | ~> 2.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |
| <a name="module_web_sg"></a> [web\_sg](#module\_web\_sg) | terraform-aws-modules/security-group/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_route53_zone_association.vpc_r53_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone_association) | resource |
| [aws_ami.jay-ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_name"></a> [alb\_name](#input\_alb\_name) | n/a | `string` | `"het-desai-alb"` | no |
| <a name="input_app_sg"></a> [app\_sg](#input\_app\_sg) | n/a | `string` | `"het-desai-app-sg"` | no |
| <a name="input_asg_desired_size"></a> [asg\_desired\_size](#input\_asg\_desired\_size) | n/a | `number` | `2` | no |
| <a name="input_asg_instance_type"></a> [asg\_instance\_type](#input\_asg\_instance\_type) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_asg_max_size"></a> [asg\_max\_size](#input\_asg\_max\_size) | n/a | `number` | `3` | no |
| <a name="input_asg_min_size"></a> [asg\_min\_size](#input\_asg\_min\_size) | n/a | `number` | `1` | no |
| <a name="input_asg_name"></a> [asg\_name](#input\_asg\_name) | n/a | `string` | `"het-desai-asg"` | no |
| <a name="input_azs"></a> [azs](#input\_azs) | n/a | `list` | <pre>[<br>  "us-east-1a",<br>  "us-east-1b",<br>  "us-east-1c"<br>]</pre> | no |
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | n/a | `string` | `"arn:aws:acm:us-east-1:587172484624:certificate/4a382046-f0f6-4203-bfe5-a6319c62c318"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `string` | `"het-desai-rds"` | no |
| <a name="input_db_sg"></a> [db\_sg](#input\_db\_sg) | n/a | `string` | `"het-desai-db-sg"` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `"dev"` | no |
| <a name="input_http_port"></a> [http\_port](#input\_http\_port) | n/a | `number` | `80` | no |
| <a name="input_http_protocol"></a> [http\_protocol](#input\_http\_protocol) | n/a | `string` | `"HTTP"` | no |
| <a name="input_https_port"></a> [https\_port](#input\_https\_port) | n/a | `number` | `443` | no |
| <a name="input_https_protocol"></a> [https\_protocol](#input\_https\_protocol) | n/a | `string` | `"HTTPS"` | no |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | n/a | `string` | `"het-desai-igw"` | no |
| <a name="input_launch_template_name"></a> [launch\_template\_name](#input\_launch\_template\_name) | n/a | `string` | `"het-desai-launch-template"` | no |
| <a name="input_lb_type"></a> [lb\_type](#input\_lb\_type) | n/a | `string` | `"application"` | no |
| <a name="input_main_rt_name"></a> [main\_rt\_name](#input\_main\_rt\_name) | n/a | `string` | `"het-desai-main-rtb"` | no |
| <a name="input_mysql_port"></a> [mysql\_port](#input\_mysql\_port) | n/a | `number` | `3306` | no |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | n/a | `string` | `"het-desai-nat"` | no |
| <a name="input_owner_email_id"></a> [owner\_email\_id](#input\_owner\_email\_id) | n/a | `string` | `"het.desai@intuitive.cloud"` | no |
| <a name="input_pri_rt_name"></a> [pri\_rt\_name](#input\_pri\_rt\_name) | n/a | `string` | `"het-desai-private-rtb"` | no |
| <a name="input_pri_subnet"></a> [pri\_subnet](#input\_pri\_subnet) | n/a | `list` | <pre>[<br>  "15.0.1.0/24",<br>  "15.0.2.0/24",<br>  "15.0.3.0/24",<br>  "15.0.4.0/24",<br>  "15.0.5.0/24",<br>  "15.0.6.0/24"<br>]</pre> | no |
| <a name="input_pri_subnet_names"></a> [pri\_subnet\_names](#input\_pri\_subnet\_names) | n/a | `list` | <pre>[<br>  "het-desai-privateA-subnet",<br>  "het-desai-privateB-subnet",<br>  "het-desai-privateC-subnet",<br>  "het-desai-privateD-subnet",<br>  "het-desai-privateE-subnet",<br>  "het-desai-privateF-subnet"<br>]</pre> | no |
| <a name="input_private_zone_id"></a> [private\_zone\_id](#input\_private\_zone\_id) | n/a | `string` | `"Z09600291FQN85FFRHCOB"` | no |
| <a name="input_pub_rt_name"></a> [pub\_rt\_name](#input\_pub\_rt\_name) | n/a | `string` | `"het-desai-public-rtb"` | no |
| <a name="input_pub_subnet"></a> [pub\_subnet](#input\_pub\_subnet) | n/a | `list` | <pre>[<br>  "15.0.101.0/24",<br>  "15.0.102.0/24",<br>  "15.0.103.0/24"<br>]</pre> | no |
| <a name="input_pub_subnet_names"></a> [pub\_subnet\_names](#input\_pub\_subnet\_names) | n/a | `list` | <pre>[<br>  "het-desai-publicA-subnet",<br>  "het-desai-publicB-subnet",<br>  "het-desai-publicC-subnet"<br>]</pre> | no |
| <a name="input_public_zone_id"></a> [public\_zone\_id](#input\_public\_zone\_id) | n/a | `string` | `"Z09694789KLKEHOHJN0T"` | no |
| <a name="input_rds-endpoint"></a> [rds-endpoint](#input\_rds-endpoint) | n/a | `string` | `"het-desai-rds.dns-poc-onprem.tk"` | no |
| <a name="input_target_grp_prefix"></a> [target\_grp\_prefix](#input\_target\_grp\_prefix) | n/a | `string` | `"het-"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | `"15.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `"het-desai-vpc"` | no |
| <a name="input_web_sg"></a> [web\_sg](#input\_web\_sg) | n/a | `string` | `"het-desai-web-sg"` | no |

## Outputs

No outputs.
