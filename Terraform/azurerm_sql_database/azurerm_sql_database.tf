locals { 
  sqldb_edition = "${lookup(var.sqldb_edition_types, var.sqldb_edition, "Standard")}"
 } 


resource "azurerm_sql_database" "Database" {
    name = "${var.sqldb_name}"
    resource_group_name = "${var.rg_name}"
    server_name = "${var.sqlserver_name}"
    location = "${var.rg_location}"
    edition = "${local.sqldb_edition}"
    requested_service_objective_name = "${var.requested_service_objective_name}"
}
