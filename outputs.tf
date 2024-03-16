# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "domain-name" {
  value = aws_instance.web.public_dns
}

output "instance-public-ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}
