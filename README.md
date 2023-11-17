Pre-requisites:  

    Terraform installation

    AWS CLI

    AWS account Security key and Access key

Below are the steps to spin up basic EKS cluster

    Export the AWS keys with below commands

        Export AWS_ AWS_ACCESS_KEY_ID=”ACEESSKEY”

        Export AWS_SECRET_ACCESS_KEY=”Secretaccesskey”

Run this below terraform commands sequentially

    terraform init  

    terraform plan

    terraform apply
    
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.47 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.10 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >= 0.9 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.23.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | ~> 19.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | The Capacity of EKS node group ON\_DEMAND or SPOT | `string` | `"ON_DEMAND"` | no |
| <a name="input_eks_ami_type"></a> [eks\_ami\_type](#input\_eks\_ami\_type) | The AMI type for the EKS node group | `string` | `"AL2_x86_64"` | no |
| <a name="input_eks_desired_size"></a> [eks\_desired\_size](#input\_eks\_desired\_size) | The desired size of the EKS node group | `number` | `4` | no |
| <a name="input_eks_max_size"></a> [eks\_max\_size](#input\_eks\_max\_size) | The maximum size of the EKS node group | `number` | `6` | no |
| <a name="input_eks_min_size"></a> [eks\_min\_size](#input\_eks\_min\_size) | The minimum size of the EKS node group | `number` | `3` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The Instance type for the EKS node group | `string` | `"t2.micro"` | no |
| <a name="input_name"></a> [name](#input\_name) | cluster name | `string` | `"katkam"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The Namespace to be created in EKS cluster | `string` | `"katkam"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | n/a | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | n/a | `list(string)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24",<br>  "10.0.103.0/24"<br>]</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The end point EKS cluster |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | The name of the EKS cluster |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | The arn of vpc |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The vpc ID |
