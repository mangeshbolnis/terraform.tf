provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVN6LUQKT2HBJ6SUO"
    secret_key = "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"
}
resource "aws_instance" "my_instance" {
    ami ="ami-0b6d9d3d33ba97d99"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    tags ={
        env = "dev"
    }
}
resource "aws_security_group" "my_sg" {
    name = "my_sg"
    vpc_id = "vpc-02122504eb87ec131"  
    ingress {
        protocol ="TCP"
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"] 

    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port =0
        cidr_blocks = ["0.0.0.0/0"]

    }
    tags = {
        env = "dev"
    }
}