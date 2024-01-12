resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "upload_log_file" {
  depends_on   = [aws_s3_bucket.s3_bucket]
  bucket       = var.bucket_name
  key    = "task_1_large_file.log"
  source = "../task_1_large_file.log"
  server_side_encryption = "AES256"
}