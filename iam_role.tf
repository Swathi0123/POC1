resource "aws_iam_role" "master34" {
  name = "ed-eks-master34"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
<<<<<<< HEAD
  role       = aws_iam_role.master34.name
=======
  role       = aws_iam_role.master123.name
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
}

resource "aws_iam_role_policy_attachment" "AmazonEKSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
<<<<<<< HEAD
  role       = aws_iam_role.master34.name
=======
  role       = aws_iam_role.master123.name
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
}

resource "aws_iam_role_policy_attachment" "AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
<<<<<<< HEAD
  role       = aws_iam_role.master34.name
}

resource "aws_iam_role" "worker34" {
  name = "ed-eks-worker34"
=======
  role       = aws_iam_role.master123.name
}

resource "aws_iam_role" "worker123" {
  name = "ed-eks-worker123"
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

<<<<<<< HEAD
resource "aws_iam_policy" "autoscaler34" {
  name   = "ed-eks-autoscaler34-policy"
=======
resource "aws_iam_policy" "autoscaler123" {
  name   = "ed-eks-autoscaler-policy1"
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeAutoScalingInstances",
        "autoscaling:DescribeTags",
        "autoscaling:DescribeLaunchConfigurations",
        "autoscaling:SetDesiredCapacity",
        "autoscaling:TerminateInstanceInAutoScalingGroup",
        "ec2:DescribeLaunchTemplateVersions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

}

resource "aws_iam_role_policy_attachment" "AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
<<<<<<< HEAD
  role       = aws_iam_role.worker34.name
=======
  role       = aws_iam_role.worker123.name
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
}

resource "aws_iam_role_policy_attachment" "AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
<<<<<<< HEAD
  role       = aws_iam_role.worker34.name
=======
  role       = aws_iam_role.worker123.name
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
}

resource "aws_iam_role_policy_attachment" "AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
<<<<<<< HEAD
  role       = aws_iam_role.worker34.name
=======
  role       = aws_iam_role.worker123.name
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
}

resource "aws_iam_role_policy_attachment" "AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
<<<<<<< HEAD
  role       = aws_iam_role.worker34.name
=======
  role       = aws_iam_role.worker123.name
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
}

resource "aws_iam_role_policy_attachment" "x-ray" {
  policy_arn = "arn:aws:iam::aws:policy/AWSXRayDaemonWriteAccess"
<<<<<<< HEAD
  role       = aws_iam_role.worker34.name
}
resource "aws_iam_role_policy_attachment" "s3" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = aws_iam_role.worker34.name
}

resource "aws_iam_role_policy_attachment" "autoscaler34" {
  policy_arn = aws_iam_policy.autoscaler34.arn
  role       = aws_iam_role.worker34.name
}

resource "aws_iam_instance_profile" "worker34" {
  depends_on = [aws_iam_role.worker34]
  name       = "ed-eks-worker-new-profile"
  role       = aws_iam_role.worker34.name
}
=======
  role       = aws_iam_role.worker123.name
}
resource "aws_iam_role_policy_attachment" "s3" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = aws_iam_role.worker123.name
}

resource "aws_iam_role_policy_attachment" "autoscaler123" {
  policy_arn = aws_iam_policy.autoscaler123.arn
  role       = aws_iam_role.worker123.name
}

resource "aws_iam_instance_profile" "worker123" {
  depends_on = [aws_iam_role.worker123]
  name       = "ed-eks-worker-new-profile1"
  role       = aws_iam_role.worker123.name
}
>>>>>>> d2580cc212affc5b0cb8d1f1f60e3193e26a416f
