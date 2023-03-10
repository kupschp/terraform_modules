output "address" {
  value = aws_db_instance.ptg-db.address
  description = "database endpoint address"
}

output "port" {
  value = aws_db_instance.ptg-db.port
  description = "database listening port"
}

output "arn" {
  value = aws_db_instance.ptg-db.arn
  description = "db arn"
}