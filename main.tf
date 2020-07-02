resource "aws_ecs_task_definition" "service" {
  family                = "service"
  container_definitions = file("task-definitions/service.json")
  
  # task_role_arn
  # execution_role_arn
  # network_mode = "awsvpc"
  # ipc_mode = "task"
  # pid_mode = "task"
  
  #volume {
  #  name      = "service-storage"
  #  host_path = "/ecs/service-storage"
  #}

  #placement_constraints {
  #  type       = "memberOf"
  #  expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  #}
  
  # cpu
  # memory
  requires_compatibilities = "FARGATE"
  
  # proxy_configuration
  # inference_accelerator 
  # tags
}
