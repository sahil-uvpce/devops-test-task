module "sg" {
  source     = "../../modules/sg/"
  aws_vpc_id = module.vpc.aws_vpc_id
}
module "ecs" {
  source             = "../../modules/ecs/"
  aws_security_group = split(",", module.sg.aws_security_group_id)
  aws_subnet_id      = split(",", module.vpc.aws_subnet_id)
}
module "vpc" {
  source = "../../modules/vpc/"
}