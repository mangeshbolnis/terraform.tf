provider "aws" {
    region = "eu-north-1"

}
resource "aws_iam_user" "new_user" {
    name = "new_iam_user"


    tags = {
        name = "loadbalancer"
        environment = "practice"
    }
}
resource "aws_iam_access_key" "new_access_user" {
    user = aws_iam_user.new_user.name

}