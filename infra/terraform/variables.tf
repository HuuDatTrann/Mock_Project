variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "ec2_ami_id" {
  description = "EC2 AMI ID (ví dụ Amazon Linux 2)"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "docker_image" {
  description = "Đường dẫn image Docker đã push lên ECR/Docker Hub"
  type        = string
}
