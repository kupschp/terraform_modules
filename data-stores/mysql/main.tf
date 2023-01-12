resource "aws_db_instance" "ptg-db" {
    identifier_prefix = "${var.identifier_prefix}-db"
    allocated_storage = var.db_storage_size
    instance_class = var.db_instance_type
    skip_final_snapshot = true

    backup_retention_period = var.backup_retention_period

    replicate_source_db = var.replicate_source_db

    #db params
    engine = local.engine
    db_name = var.replicate_source_db
    username = var.replicate_source_db
    password = var.replicate_source_db
}