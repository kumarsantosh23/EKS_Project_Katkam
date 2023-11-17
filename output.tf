output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "vpc_id" {
  description = "The name of the EKS cluster"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "The name of the EKS cluster"
  value       = module.vpc.vpc_arn
}
