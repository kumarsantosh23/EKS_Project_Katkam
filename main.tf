module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "my_cluster_katkam_test"
  cluster_version = "1.27"

  cluster_endpoint_public_access  = true

  cluster_addons = {
#    coredns = {
#      most_recent = true
#    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id  # Assuming you have another module for VPC creation
  subnet_ids               = module.vpc.private_subnets  # Replace with your private subnet IDs
  control_plane_subnet_ids = module.vpc.private_subnets

 # vpc_id                   = "vpc-0e0e6bbe1985c12ef"
 # subnet_ids               = ["subnet-0586e54828db02217", "subnet-09d3d1497e6bf4a8c", "subnet-041036da3b8fbde1d"]
 # control_plane_subnet_ids = ["subnet-06c616fc011de60cf", "subnet-014c81387b93feb0c", "subnet-00394bac1487e898e"]

  # EKS Managed Node Group(s)
 # eks_managed_node_group_defaults = {
#    instance_types = ["t2.micro"]
#  }

  eks_managed_node_groups = {
    My_katkam = {
      min_size     = var.eks_min_size
      max_size     = var.eks_max_size
      desired_size = var.eks_desired_size
      ami_type      = var.eks_ami_type
#      ami_type = "BOTTLEROCKET_x86_64"
#      platform = "bottlerocket"
#      ami_id       = "ami-1234567890abcdef0"


       instance_types = [var.instance_type]
#      instance_types = ["t2.micro"]
#      capacity_type  = "ON_DEMAND"
      capacity_type  = var.capacity_type
    }
  }


#  tags = {
#    OWNER = "katkam_s"
#    CATEGORY   = "ENG_ASSESSMENT"
#  }
}
