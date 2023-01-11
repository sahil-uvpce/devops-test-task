output "aws_vpc_id" {
  description = "AWS vpc id"
  value       = aws_vpc.main.id
}
output "aws_vpc_arn" {
  description = "AWS vpc arn"
  value       = aws_vpc.main.arn
}
output "aws_subnet_id" {
  description = "AWS vpc subnet id"
  value       = aws_subnet.subnet.id
}