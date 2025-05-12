resource "aws_cloudwatch_log_group" "app_logs" {
  name              = "/sre/app/${terraform.workspace}"
  retention_in_days = 7
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = "cpu-util-${terraform.workspace}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"
  alarm_actions       = [var.sns_topic_arn]
  dimensions = {
    InstanceId = aws_instance.web.id
  }
}