resource "aws_ssm_parameter" "lb_arn" {
  name  = "/alex-ecs/lb/arn"
  value = aws_lb.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "aws_lb_listener" {
  name  = "/alex-ecs/lb/listener"
  value = aws_lb_listener.main.arn
  type  = "String"
}

