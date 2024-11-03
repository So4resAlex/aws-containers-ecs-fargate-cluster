output "load_balancer_dns" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.main.dns_name
}

output "lb_ssm_arn" {
  description = "The ARN of the SSM parameter that stores the load balancer ARN."
  value       = aws_ssm_parameter.lb_arn.id
}

output "lb_ssm_listener" {
  description = "The ARN of the SSM parameter that stores the load balancer listener ARN."
  value       = aws_ssm_parameter.aws_lb_listener.id
}
