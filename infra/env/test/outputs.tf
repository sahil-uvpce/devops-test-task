output "aws_ecs_cluster_name" {
  description = "AWS ecs cluster name"
  value       = module.ecs.aws_ecs_cluster_name
}
output "aws_ecs_cluster_id" {
  description = "AWS ecs cluster id"
  value       = module.ecs.aws_ecs_cluster_id
}
#output "aws_ecs_cluster_arn" {
# description = "AWS ecs cluster arn"
# value       = module.ecs.aws_ecs_cluster_arn
#}
output "aws_security_group_name" {
  description = "AWS securitygroup name"
  value       = module.sg.aws_security_group_name
}
output "aws_security_group_id" {
  description = "AWS security group id"
  value       = module.sg.aws_security_group_id
}
output "aws_security_group_arn" {
  description = "AWS security group arn"
  value       = module.sg.aws_security_group_arn
}
output "aws_vpc_id" {
  description = "AWS vpc id"
  value       = module.vpc.aws_vpc_id
}
output "aws_vpc_arn" {
  description = "AWS vpc arn"
  value       = module.vpc.aws_vpc_arn
}
output "aws_subnet_id" {
  description = "AWS subnet id"
  value       = module.vpc.aws_subnet_id
}

