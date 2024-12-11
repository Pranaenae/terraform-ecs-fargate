output "alb_url" {
  description = "The DNS name of the load balancer"
  value       = aws_alb.main.dns_name
}
