#!/bin/bash

# MySQL connection parameters
db_user="username"
db_password="your_password"
db_host="localhost"
db_name="database_name"

# Function to execute MySQL queries
execute_mysql_query() {
    local query="$1"
    mysql -u $db_user -p$db_password -h $db_host $db_name -e "$query"
}

insert_query="INSERT INTO your_table (column1, column2) VALUES ('value1', 'value2');"
execute_mysql_query "$insert_query"

# Example: Select data from a MySQL table
select_query="SELECT * FROM your_table;"
execute_mysql_query "$select_query"

