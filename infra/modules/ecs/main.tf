############CREATING A ECS CLUSTER#############

resource "aws_ecs_cluster" "cluster" {
  name = var.name
  setting {
    name  = var.aws_ecs_cluster_name
    value = var.aws_ecs_cluster_value
  }
}

resource "aws_ecs_task_definition" "task" {
  family                   = var.aws_ecs_task_definition_family
  network_mode             = var.aws_ecs_task_definition_network_mode
  requires_compatibilities = ["FARGATE", "EC2"]
  cpu                      = 512
  memory                   = 2048
  container_definitions    = <<DEFINITION
  [
    {
      "name"      : "nginx",
      "image"     : "nginx:1.23.1",
      "cpu"       : 512,
      "memory"    : 2048,
      "essential" : true,
      "portMappings" : [
        {
          "containerPort" : 80,
          "hostPort"      : 80
        }
      ]
    }
  ]
  DEFINITION
}

resource "aws_ecs_service" "service" {
  name             = var.aws_ecs_service_name
  cluster          = aws_ecs_cluster.cluster.id
  task_definition  = aws_ecs_task_definition.task.id
  desired_count    = 1
  launch_type      = var.aws_ecs_service_launch_type
  platform_version = var.aws_ecs_service_platform_version

  network_configuration {
    assign_public_ip = true
    security_groups  = var.aws_security_group
    subnets          = var.aws_subnet_id
  }
  lifecycle {
    ignore_changes = [task_definition]
  }
}