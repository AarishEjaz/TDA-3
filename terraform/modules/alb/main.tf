resource "aws_lb" "backend" {
  name               = "${var.environment}-backend-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = var.alb_config.public_subnet_ids

#   enable_deletion_protection = true     keep it enabled for production lever projects 

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.id
#     prefix  = "test-lb"
#     enabled = true
#   }

  tags = {
    Environment = var.environment
  }
}

resource "random_string" "target_group_suffix" {
  length=4
  special = false
  upper = false
}

resource "aws_lb_target_group" "backend" {
  name     = "${var.environment}-backend-tg-${random_string.target_group_suffix.result}"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.alb_config.vpc_id

  health_check {
    enabled = true
    healthy_threshold = 2
    interval = 30
    matcher = "200"
    path = "/health"
    port = "traffic-port"
    unhealthy_threshold = 2
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}