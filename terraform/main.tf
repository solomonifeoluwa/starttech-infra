resource "aws_cloudwatch_log_group" "backend_logs" {
  name              = "/starttech/backend"
  retention_in_days = 7
}
resource "aws_cloudwatch_log_group" "system_logs" {
  name              = "/starttech/system"
  retention_in_days = 7
}
user_data = base64encode(<<-EOF
#!/bin/bash

apt update -y

apt install docker.io -y
systemctl start docker
systemctl enable docker

apt install amazon-cloudwatch-agent -y

docker run -d -p 8080:8080 yourdockerhubusername/starttech-backend

EOF
)
