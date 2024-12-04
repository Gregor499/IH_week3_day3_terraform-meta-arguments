resource "aws_instance" "gre_server" {
    //count = 4 # create four similar EC2 instances
    count = length(var.ec2_name)

    ami           = "ami-0ae9642bc1885d7b5"
    instance_type = "t2.micro"
    key_name      = "gre_kp"
  
    tags = {
        //Name = "gre_server ${count.index}"
        Name = var.ec2_name[count.index]
    }

}