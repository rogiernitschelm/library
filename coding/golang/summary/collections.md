## Collections

### Arrays

Declaring and adding:

```go
var languages [3]string
languages[0] = "Ruby"
languages[1] = "Python"
languages[2] = "Golang"

var array := [...]string{"bonjour", "world!"}
```

Multidimensional:

```go
var a [4][5]string
```

Slices:

```go
var languages []string
languages = append(languages, "Typescript")
languages = append(languages, "C++")
```

Slice literal:

```go
languages := []string{"Go", "Ruby", "js"}
```

Checking the length of a slice:

```go
languages := []string{"Go", "Ruby", "js"}
len(languages)
```

### Maps

Declaring:

```go
var celebs = map[string]int{
  "Nicolas Cage": 50
  "Selena Gomez": 21
  "Jude Law": 41
}

map[string]int{"Nicolas Cage": 50, "Selena Gomez": 21}
```

Inserting:

```go
m[key] = elem
```

Retrieving:

```go
elem = m[key]
```

Deleting:

```go
delete(m, key)
```

Testing presence:

```go
elem, ok = m[key]
```
