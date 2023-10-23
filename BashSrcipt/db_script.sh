#!/bin/bash

database="mydatabase.db"

sqlite3 $database <<EOF
CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
);
EOF

insert_data() {
    local name="$1"
    local email="$2"
    sqlite3 $database "INSERT INTO contacts (name, email) VALUES ('$name', '$email');"
    echo "Data inserted: $name, $email"
}

retrieve_data() {
    local name="$1"
    sqlite3 $database "SELECT * FROM contacts WHERE name='$name';"
}

insert_data "badal" "b@gmail.com"
insert_data "fuck" "f@gmail.com"
retrieve_data "fuck"

