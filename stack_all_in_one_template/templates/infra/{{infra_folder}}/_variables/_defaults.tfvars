# Global
environment                                      = "" # DYNAMIC
region                                           = ""

# Container
container_image                                  = "httpd"
container_version                                = "latest"

# Sizing
task_cpu                                         = 512
task_memory                                      = 1024

# Alarm CPU
as_cw_alarm_cpu_low_threshold                    = "5"
as_cw_alarm_cpu_high_threshold                   = "60"

# Aplication
app_port                                         = 
nlb_port                                         = 
nlb_port_green                                   = 

# Deploy
deployment_minimum_healthy_percent               = 100
deployment_maximum_percent                       = 200

# Tags
CVI_ID                                           = "DP-2018-0034016"
sigla                                            = "AI"

