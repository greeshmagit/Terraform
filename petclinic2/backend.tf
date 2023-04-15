terraform {
  backend "s3" {
    bucket         = "tw-tf-remote-state-demo-bucket20230415064135913200000001"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    kms_key_id     = "22bb6f26-f238-439b-9b68-ba27d0f845c1"
    dynamodb_table = "tw-tf-remote-state-lock-demo-table"
  }
}
