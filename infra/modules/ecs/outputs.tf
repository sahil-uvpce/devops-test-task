output "aws_ecs_cluster_name" {
  description = "AWS ecs cluster name"
  value       = aws_ecs_cluster.cluster.name
}
output "aws_ecs_cluster_id" {
  description = "AWS ecs cluster id"
  value       = aws_ecs_cluster.cluster.id
}
output "aws_ecs_cluster_arn" {
  description = "AWS ecs cluster arn"
  value       = aws_ecs_cluster.cluster.arn
}
output "aws_ecs_task_definition_arn" {
  description = "AWS ecs cluster arn"
  value       = aws_ecs_task_definition.task.arn
}
output "aws_ecs_task_definition_id" {
  description = "AWS ecs cluster id"
  value       = aws_ecs_task_definition.task.id
}
output "aws_ecs_service_name" {
  description = "AWS ecs service name"
  value       = aws_ecs_service.service.name
}
output "aws_ecs_service_id" {
  description = "AWS ecs service id"
  value       = aws_ecs_service.service.id
}


