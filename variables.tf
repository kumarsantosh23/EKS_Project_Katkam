variable "eks_min_size" {
  description = "The minimum size of the EKS node group"
  type        = number
  default     = 3
}

variable "eks_max_size" {
  description = "The maximum size of the EKS node group"
  type        = number
  default     = 6
}

variable "eks_desired_size" {
  description = "The desired size of the EKS node group"
  type        = number
  default     = 4
}

variable "eks_ami_type" {
  description = "The AMI type for the EKS node group"
  type        = string
  default     = "AL2_x86_64"
}

variable "instance_type" {
  description = "The Instance type for the EKS node group"
  type        = string
  default     = "t2.micro"
}

variable "name" {
  description = "cluster name"
  type        = string
  default     = "katkam"
}

variable "capacity_type" {
  description = "The Capacity of EKS node group ON_DEMAND or SPOT"
  type        = string
  default     = "ON_DEMAND"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "namespace" {
  description = "The Namespace to be created in EKS cluster"
  type        = string
  default     = "katkam"
}
