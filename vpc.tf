module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "katkam"
  cidr = var.vpc_cidr

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

}
