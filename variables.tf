variable "profile" {
  type = string
}
variable "region" {
  type = string
}
variable "app_port" {
  type = number
}
variable "app_image" {
  type = string
}
variable "fargate_cpu" {
  type = number
}
variable "fargate_memory" {
  type = number
}
variable "az_count" {
  type = number
}
variable "secret_id" {
  type = string
}
