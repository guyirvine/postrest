# postgrest

# Why
Have a different way to interact with data from your [postgresal] database.

You can either interact with the data via your browser,

http://localhost:4567/

or hit the rest interface directly.

http://localhost:4567/:env/:tbl

# How

Fire up the server, providing as many connection strings as you like.
Connection strings are provided as environment variables.

# What

$ DB=pgsql://postgrest_test_user:postgrest_test_pass@localhost:5432/postgrest_test postrest

http://localhost:4567/DB/test_tbl?field1=value1&field2=value2
or
http://localhost:4567/:db/:tbl?field1=value1&field2=value2
