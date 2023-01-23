resource "aws_s3_bucket" "ccs-test-drift-s3-bucket-a" {
  bucket = "ccs-test-drift-s3-bucket-a"
  tags = {
    Name        = "CCS Drift Detection Testing"
    Environment = "Test"
    Owner       = "tplisson"
    yor_trace   = "3edf7d9d-a5c4-4860-9205-f753c11db242"
  }
}

resource "aws_s3_bucket" "ccs-test-drift-s3-bucket-b" {
  bucket = "ccs-test-drift-s3-bucket-b"
  tags = {
    Name        = "CCS Drift Detection Testing"
    Environment = "Test"
    Owner       = "tplisson"
    yor_trace   = "445ff0d8-8f38-45b6-b7de-955f0927dbe4"
  }
}

resource "aws_s3_bucket_acl" "ccs-test-drift-s3-bucket-a-acl" {
  bucket = aws_s3_bucket.ccs-test-drift-s3-bucket-a.id
  acl    = "private"
}

resource "aws_s3_bucket_acl" "ccs-test-drift-s3-bucket-b-acl" {
  bucket = aws_s3_bucket.ccs-test-drift-s3-bucket-b.id
  acl    = "private"
}