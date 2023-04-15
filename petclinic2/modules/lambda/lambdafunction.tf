resource "aws_security_group" "lambda_sg" {
  name_prefix = "petclinic-lambda-sg"
  vpc_id      = aws_vpc.petclinic_vpc.id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = [local.pri_subnet_id[0]]
  }
}
resource "aws_lambda_function" "lambda_fn" {
function_name = "petclinic-lambda"
role = aws_iam_role.lambda_role.arn
handler = "index.handler"
runtime = "nodejs14.x"
memory_size = 128
timeout = 60
filename      = "lambda_function_payload.zip"
vpc_config {
subnet_ids = [local.pri_subnet_id[0]]
security_group_ids = [aws_security_group.lambda_sg.id]
}
tags = {
Name = "lambda-petclinic"
}
}