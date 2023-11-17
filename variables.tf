variable "eks_min_size" {
  description = "The minimum size of the EKS node group"
  type        = number
  default     = 1
}

variable "eks_max_size" {
  description = "The maximum size of the EKS node group"
  type        = number
  default     = 3
}

variable "eks_desired_size" {
  description = "The desired size of the EKS node group"
  type        = number
  default     = 1
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

variable "capacity_type" {
  description = "The Capacity of EKS node group ON_DEMAND or SPOT"
  type        = string
  default     = "ON_DEMAND"
}
