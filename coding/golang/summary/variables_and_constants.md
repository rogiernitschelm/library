## Variables and constants

Declaring variables:

```go

// Recommended way:

character := "Daenerys"

var (
    name          string
    age           int
    location      string
    city, address string
)

var (
  name  string = "Daenerys"
  age   string = 30
)

var (
  name = "Daenerys"
  location, haircolor, age = "Iron throne", "blonde", 30
)
```

Variables can store any type, including functions. Outside of a construct
a variable must be declared with var.

Declaring constants:

```go
const Pi = 3.14
const (
  statusOK        = 200
  statusCreated   = 201
  statusNotFound  = 404
)
```
