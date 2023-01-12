resource "aws_db_instance" "ptg-db" {
    identifier_prefix = "${var.identifier_prefix}-db"
    allocated_storage = var.db_storage_size
    instance_class = var.db_instance_type
    skip_final_snapshot = true

    backup_retention_period = var.backup_retention_period

    replicate_source_db = var.replicate_source_db

    #set params if replicate_source_db isn't set
    engine = var.replicate_source_db == null ? local.engine : null
    db_name = var.replicate_source_db == null ? var.db_name : null
    username = var.replicate_source_db == null ? var.db_username : null
    password = var.replicate_source_db == null ? var.db_password : null
}