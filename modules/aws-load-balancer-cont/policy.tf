resource "aws_iam_policy" "aws_controller_policy" {
  name        = "${var.project_name}-aws-controller-policy"
  description = "IAM policy for AWS Load Balancer Controller"

  policy = file("${path.module}/policy.json")

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-aws-controller-policy"
    }
  )

}