module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "my_cluster_katkam_test"
  cluster_version = "1.27"

  cluster_endpoint_public_access = true

  cluster_addons = {
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    My_katkam = {
      min_size       = var.eks_min_size
      max_size       = var.eks_max_size
      desired_size   = var.eks_desired_size
      ami_type       = var.eks_ami_type
      instance_types = [var.instance_type]
      capacity_type  = var.capacity_type

      update_config = {
        max_unavailable           = 1
        max_surge                 = 1
        max_batch_size            = 1
        drain_max_timeout_seconds = 600
      }
    }
  }
}
