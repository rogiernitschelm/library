## Functions

Declaring a function:

```go

func add(x int, y int) int {
  return x + y
}

func location(city string) (string, string) {

  ...

  return address, number
}
```

Returning named parameters:

```go
func location(city string) (street, postal string) {
  ...
}
```
