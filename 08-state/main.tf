terraform {
  backend "s3" {
    bucket = "a78-tf-states"
    key    = "testing/state"
    region = "us-east-1"
  }
}

resource "null_resource" "dummy1" {}
resource "null_resource" "dummy2" {}
