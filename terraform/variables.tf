variable "nome_repositorio" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "cluster_identifier" {
  type = string
}

variable "DB_DATABASE" {
  type = string
}

variable "DB_USERNAME" {
  type = string
}

variable "DB_PASSWORD" {
  type = string
}