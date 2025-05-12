variable "ami" {
  description = "AMI ID para instâncias EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "sns_topic_arn" {
  description = "ARN do tópico SNS para alarmes"
  type        = string
}