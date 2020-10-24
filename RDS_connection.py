#!/usr/bin/python

import psycopg2

conn = psycopg2.connect(database="testdb", user = "postgres", password = "pass123", host = "my-rds-table-name.123456.us-east-1.rds.amazonaws.com", port = "5432")

print "Opened database successfully"
