environment = "DEV"
region  = "us-east-1"

private_registry_secret_name= ""
private_registry_region = "us-east-1"

# application
as_max_capacity = "2"
as_min_capacity = "1"

task_cpu                                         = 512
task_memory                                      = 1024

# aws logs
awslogs_group = ""
awslogs_region= ""

deployment_minimum_healthy_percent   = 100
deployment_maximum_percent  = 200

# environment variables here
environment_vars= [
  {
    "name"  = "",
    "value" = ""
  }
]

