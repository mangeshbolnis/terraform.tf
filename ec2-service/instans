provider "aws" {
    region ="us-east-1"
    access_key = "AKIAVN6LUQKT2HBJ6SUO"
    secret_key = "FsHf4fjdR9N/3uZ7ko4p+8y0bZLAGWoVSzeqjlL"  
}
resource "aws_instance" "my_instance" {
    ami = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-050ae52e91121fd8f"]

}