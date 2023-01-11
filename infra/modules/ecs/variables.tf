variable "name" {
  description = "AWS cluster name"
  default     = "cluster"
  type        = string
}
variable "aws_ecs_cluster_name" {
  description = "AWS ecs cluster name"
  default     = "containerInsights"
  type        = string
}
variable "aws_ecs_cluster_value" {
  description = "AWS ecs cluster value"
  default     = "enabled"
  type        = string
}

variable "aws_ecs_task_definition_family" {
  description = "AWS ecs task definition family"
  default     = "service"
  type        = string
}

variable "aws_ecs_task_definition_network_mode" {
  description = "AWS ecs task definition network_mode"
  default     = "awsvpc"
  type        = string
}

variable "aws_ecs_service_name" {
  description = "AWS ecs service name"
  default     = "service"
  type        = string
}

variable "aws_ecs_service_launch_type" {
  description = "AWS ecs service launch type"
  default     = "FARGATE"
  type        = string
}

variable "aws_ecs_service_platform_version" {
  description = "AWS ecs service platformversion"
  default     = "LATEST"
  type        = string
}

variable "aws_security_group"{
  description = "AWS sg id"
  type = list
}

variable "aws_subnet_id" {
  description = "AWS subnet id"
  type = list
}