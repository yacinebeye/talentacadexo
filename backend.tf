terraform {
  backend "s3" {
    bucket = "talent-academy-756231337078-tfstates"
    key    = "Users/yacine.beye/documents/talent-academy/talentacadexo"
    dynamodb_table = "terraform-lock"
  }
}