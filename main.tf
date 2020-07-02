resource "aws_ecs_task_definition" "this" {
  family                = "myproject-service-xray-daemon"
  container_definitions = file("task-definitions/service.json")
  task_role_arn         = "arn:aws:iam::707538076348:role/myproject-ecs-task-role"
  execution_role_arn    = "arn:aws:iam::707538076348:role/myproject-ecs-service-role"
  network_mode          = "awsvpc"

  # ipc_mode = "task"
  # pid_mode = "task"
  # volume
  # placement_constraints
  
  cpu                      = "32"
  memory                   = "256"
  requires_compatibilities = "FARGATE"
  
  # proxy_configuration
  # inference_accelerator 
  # tags
}