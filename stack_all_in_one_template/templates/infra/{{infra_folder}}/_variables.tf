variable "CVI_ID" {}
variable "sigla" {}
variable "region" {}
variable "container_image" {}
variable "container_version" {}
variable "environment" {}
variable "task_cpu" {}
variable "task_memory" {}
variable "awslogs_group" { description = " no CloudWatch" }
variable "awslogs_region" { description = "Região dos logs no CloudWatch" }
variable "app_port" { description = "Porta exposta pelo container." }
variable "nlb_port" { description = "Porta exposta pelo network load balance." }
variable "nlb_port_green" {description = "Porta exposta pelo network load balance do blue green" }
variable "private_registry_secret_name" { description = "Nome do secret que contem o usuario e senha do artifactory para deploy da imagem de container do serviço" }
variable "private_registry_region" { description = "Região do secret que contem o usuario e senha do artifactory para deploy da imagem de container do serviço" }

variable "as_max_capacity" { description = "Capacidade maxima de autoscaling" }
variable "as_min_capacity" { description = "Capacidade minima de autoscaling" }

variable "as_cw_alarm_cpu_low_threshold"{ description = "minimo de CPU para alarme" }
variable "as_cw_alarm_cpu_high_threshold"{ description = "máxixmo de CPU para alarme" }

variable "deployment_maximum_percent" {} 
variable "deployment_minimum_healthy_percent" {}

# ENVIRONMENT VARIABLES HERE
variable "environment_vars" { default = [] }




