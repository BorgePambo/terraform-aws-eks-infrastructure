output "eks_vpc_config" {
  value = aws_eks_cluster.eks_cluster.vpc_config
}


# THIS OIDC PROVIDER IS USED TO CREATE IAM ROLES FOR SERVICE ACCOUNTS IN EKS
output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
}


output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "oidc_provider_arn" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "certificate_authority_data" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}