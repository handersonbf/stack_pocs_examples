environment = "PRD"
region = "us-east-1"

private_registry_secret_name = ""
private_registry_region = "us-east-1"

# Application
as_max_capacity = "8"
as_min_capacity = "4"

# Sizing
task_cpu                                         = 4096
task_memory                                      = 8192

# Aws Logs
awslogs_group = ""
awslogs_region = "us-east-1"

deployment_minimum_healthy_percent = 100
deployment_maximum_percent = 200

# ENVIRONMENT VARIABLES HERE
environment_vars = [
  
]
