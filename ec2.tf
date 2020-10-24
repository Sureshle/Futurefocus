provider "aws"{
  region 		= "ap-south-1"
}

resource "aws_instance" "sample" {
  ami 			  = "ami-0cbcfe7b85f523cfe"
  instance_type   = "t2.micro"
  key_name 		  = "ec2-ssh"
  subnet_id 	  = "subnet-0fcc4cc2bbca86e1f"
  vpc_security_group_ids = ["sg-0fd2006d4f7f1bc7f"]
  
  tags= {
    Name 		= "Test-server"
  }
  
  root_block_device{
  encrypted 	= true
  volume_size 	= 15
  }
