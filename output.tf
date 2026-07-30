/**
output "eks_oidc" {
    value = module.eks_cluster.oidc_provider_arn
}

output "ca" {
    value = module.eks_cluster.certificate_authority_data
}

output "cluster_endpoint" {
    value = module.eks_cluster.cluster_endpoint
}

*/