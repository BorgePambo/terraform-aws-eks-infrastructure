module "eks_network" {
  source = "./modules/network"

  project_name = var.project_name
  cidr_block   = var.cidr_block

  tags = local.tags
}

module "eks_cluster" {
  source = "./modules/eks"

  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
}

module "managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  cluster_name      = module.eks_cluster.cluster_name
  subnet_private_1a = module.eks_network.subnet_priv_1a
  subnet_private_1b = module.eks_network.subnet_priv_1b
  tags              = local.tags
}


module "aws_load_balancer_controller" {
  source = "./modules/aws-load-balancer-cont"

  project_name = var.project_name
  tags         = local.tags
  oidc         = module.eks_cluster.oidc_provider_arn
  cluster_name = module.eks_cluster.cluster_name
}