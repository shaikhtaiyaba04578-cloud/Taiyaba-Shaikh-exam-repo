variable "aws_region" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t2.micro"
}

variable "ingress_ports" {
  description = "List of Ingress Ports"
  type        = list(number)
  default     = [22, 80, 443]
}