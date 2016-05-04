# postgrest

# Why
Have a different way to interact with data from your [postgresal] database.

You can either interact with the data via your browser,
```
http://localhost:3000/
```
or hit the rest interface directly.
```
http://localhost:3000/:env/:tbl
```

# How

Fire up the server, providing as many connection strings as you like.
Connection strings are provided as environment variables.

# What

```BASH
DB=postgres://localhost:5432/test postrest
```

```WWW
http://localhost:3000/DB/test_tbl?field1=value1&field2=value2
or
http://localhost:3000/:env/:tbl?field1=value1&field2=value2
```
