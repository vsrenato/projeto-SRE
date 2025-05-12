module "ec2" {
  source         = "../../modules/ec2"
  ami            = "ami-12345678"
  instance_type  = "t3.micro"
}

module "monitoring" {
  source        = "../../modules/monitoring"
  sns_topic_arn = "arn:aws:sns:us-east-1:123456789012:sre-alerts"
}