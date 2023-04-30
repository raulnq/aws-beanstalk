output "app_version" {
  value = aws_elastic_beanstalk_application_version.version.name
}
output "env_name" {
  value = aws_elastic_beanstalk_environment.environment.name
}
output "cname" {
  value = aws_elastic_beanstalk_environment.environment.cname
}