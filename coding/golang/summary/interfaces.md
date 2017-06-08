## Interfaces

```go
type User struct {
  FirstName, LastName string
}

type Player struct {
  Id, Name string
}

func (u *User) Name() string {
  ...
}

func (p *Player) Name() string {
  ...
}

func Greet(n Namer) string {
  ...
}

type Namer interface {
  Name() string
}
```
