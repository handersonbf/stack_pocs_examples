data "terraform_remote_state" "ecs_backend" {
  backend = "s3"
  
}

data "terraform_remote_state" "network" {
  backend = "s3"
  
}

terraform {
  backend "s3" {
  }
}
