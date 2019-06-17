resource "aws_s3_bucket" "festival" {
  bucket = "festival-codebuild-files"
  acl    = "private"
}

resource "aws_iam_role" "build" {
  name = "build"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "build" {
  role = "${aws_iam_role.build.name}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
    }
  ]
}
POLICY
}

resource "aws_codebuild_project" "festival" {
  name          = "festival-build"
  description   = "Build Festival Project"
  build_timeout = "5"
  service_role  = "${aws_iam_role.build.arn}"

  artifacts {
    type = "S3"
    name = "festival-codebuild-files"
    location = "festival-codebuild-files"
  }

  source {
    type            = "GITHUB"
    location        = "https://github.com/jbeaken/festival.git"
    git_clone_depth = 1
    buildspec = "buildspec.yml"
//    auth {
//        type = "OAUTH"
//      }
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "${aws_ecr_repository.environments.repository_url}:latest"
    type         = "LINUX_CONTAINER"
  }
}
