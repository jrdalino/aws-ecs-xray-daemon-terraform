# ECS Task Definition
output "aws_ecs_task_definition_arn" {
  value       = aws_ecs_task_definition.this.arn
  description = "Full ARN of the Task Definition (including both family and revision)."
}

output "aws_ecs_task_definition_family" {
  value       = aws_ecs_task_definition.this.family
  description = "The family of the Task Definition."
}

output "aws_ecs_task_definition_revision" {
  value       = aws_ecs_task_definition.this.revision
  description = "The revision of the task in a particular family."
}