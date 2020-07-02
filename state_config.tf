terraform {
  backend "ecs-task-definition-aws-xray-daemon" {
    region         = "ap-southeast-1"
    bucket         = "707538076348-ap-southeast-1-terraform-state"
    key            = "ecs-task-definition-aws-xray-daemon.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-state-lock"
  }
}