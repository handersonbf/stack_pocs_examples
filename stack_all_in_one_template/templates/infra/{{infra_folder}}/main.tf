module "api-dadosradar" {
  source = "git::http://Cloud-DevSecOps/Terraform/Module/ecs_service.git?ref=v4.1.1"

  service_name                       = "{{name_app}}"
  main_container_name                = "{{name_app}}"
  ecs_cluster_arn                    = data.terraform_remote_state.ecs_backend.outputs.ecs_id
  task_memory                        = var.task_memory
  task_cpu                           = var.task_cpu
  awslogs_group                      = var.awslogs_group
  awslogs_region                     = var.awslogs_region
  private_registry_secret_name       = var.private_registry_secret_name
  private_registry_region            = var.private_registry_region
  service_discovery_namespace_id     =  data.terraform_remote_state.network.outputs.service_discovery_ai_id
  fargate_enabled                    = true
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent
  deployment_maximum_percent         = var.deployment_maximum_percent

  container_defition_map                         = {
    "{{name_app}}"                        = {
      "container_image"                          = "httpd"
      "container_version"                        = "latest"
      "container_port"                           = var.app_port
      "container_memory"                         = "null"
      "container_cpu"                            = "null"    
      "environment_variables"                    = jsonencode(var.environment_vars)
    }
  }
  
  CVI_ID                                         = var.CVI_ID
  sigla                                          = var.sigla
  environment                                    = var.environment

}