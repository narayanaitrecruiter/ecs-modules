
resource "aws_eks_cluster" "qa_eks" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = "latest"

  vpc_config {
    subnet_ids = [aws_subnet.public_subnets[0].id, aws_subnet.public_subnets[1].id]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy,
    aws_iam_role_policy_attachment.eks_service_policy
  ]
}
