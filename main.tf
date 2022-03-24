resource "aws_s3_bucket" "s3bucket-terraform" {
    bucket = "talent-academy-756231337078-tfstates"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "talent-academy-756231337078-tfstates"
        Environment = "Test"
    }
}

resource "aws_s3_bucket_versioning" "s3bucket-terraform" {
  bucket = aws_s3_bucket.my_project_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}