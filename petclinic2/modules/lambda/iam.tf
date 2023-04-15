resource "aws_iam_role" "lambda_role" {
  name = "lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "lambda_policy_attachment" {
name = "lambda-policy-attachment"
policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
role = aws_iam_role.lambda_role.name
}

resource "aws_iam_policy_attachment" "lambda_policy_attachment" {
name = "lambda-policy-attachment"
policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
role = aws_iam_role.lambda_role.name
}
