## Structs

Declaring a struct:

```go
type gopher struct {
  name string
  age  int
}
```

Initializing a struct:

```go
gopher1 := gopher{name: "Henk", age: 100}
gopher2 := gopher{}

gopher2.name = "Hoogle"
gopher2.age = 3
```

Methods on a struct:

```go
func (g gopher) jump() string {
  ...
  return "JUMP"
}

someGopher.jump()
```


Composition:

```go
type User struct {
  id              int
  name, location  string
}

type Player struct {
  User
  GameId int
}

func main() {
  player := Player{
    User{id: 123, name: "Henkie", location: "Adam"},
    7632
  }
}

```
