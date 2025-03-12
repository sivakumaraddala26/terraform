provider "aws" {
    access_key = "aws access key"
    secret_key = "aws sec key"
    region = "us-east-1"
    #profile = "siva"
}


resource "aws_instance" "Test_server" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    user_data = <<EOF
    #!/bin/bash
    apt update -y
    apt-get install python3
    python3 --version
    apt install httpd -y
    service httpd start
    chkconfig httpd on
    cd /var/www/html
    echo "<html><h1>Hello Cloud Gurus Welcome To My Webpage</h1></html>" >
    index.html
    echo "User Data printed successfully"
  EOF


    tags = {
        Name = "Test_server"
    }
  
}


output "instance_details" {
    value = aws_instance.Test_server.id
    description = "ID of the aws instance"
}

output "instance_ip" {
    value = aws_instance.Test_server.public_ip
    description = "IP address of the aws instance"
}
output "instance_vpc_ip" {
    value = aws_instance.Test_server.private_ip
    description = "IP address of the aws instance"
}
