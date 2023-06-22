resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key-name
    associate_public_ip_address = var.associate_ip
   // security_groups = ["rtp03-sg"]
   vpc_security_group_ids = ["${aws_security_group.rtp03-sg.id}"]
   subnet_id = "${aws_subnet.rtp03-public_subent_01.id}"
    user_data              = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              sed -i -e 's/80/8080/' /etc/apache2/ports.conf
              echo "Hello World" > /var/www/html/index.html
              systemctl restart apache2
              EOF

   for_each = toset(["Dev", "Prod"])
   tags = {
     Name = "${each.key}"
   }
lifecycle {
    create_before_destroy = true
  }
}
