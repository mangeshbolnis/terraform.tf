provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVN6LUQKT2HBJ6SUO"
    secret_key = "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"

}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "terraform-s3-bucket"
    
    tags ={
        name = "my_terraform"
        environment = "dev"

    }
}