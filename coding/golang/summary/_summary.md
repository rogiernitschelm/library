## Setup

Installing go with homebrew:

```bash
brew install go --cross-compile-common
```

Create a workspace:

```bash
mkdir $HOME/go
export GOPATH=$HOME/go
```

Setting up bash_profile:

```bash
open $HOME/.bash_profile

# Inside .bash_profile

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```


## Packages and imports

The package name is the last element of the import path.

Programs start running in a package named main.

```go
package main

func main() {
  ...
}
```

```go
import "fmt"
import "math/rand"

import (
  "flag"
  "os"
)
```

Getting a package:

```bash
$ go get github.com/mattetti/goRailsYourself/crypto
```

Exported variables and functions start with a capital.

```go
func main() {
  lib.SomeFunc() { ... }
}
```


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

## Types

Type conversion:

```go
var number int = 42
var f float64 = float64(number)

string := string(number)
```

Aliasing:

```go
type AlternativeString string
type AlternativeInt int
```

## Conditional

if:

```go
if answer != 42 {
  return "Wrong answer"
}

if age == 12 {
  return "Too young"
} else if age == 99 {
  return "Too old"
} else {
  return "You are between 12 and 99 years old"
}
```

Switch:

```go
// Break and fallthrough are possible

switch mins {
	case 0:
		fmt.Println("even")
	case 1:
		fmt.Println("odd")
	}

```


## Loops

For-loop, regular:

```go
for i := 0; i < 5; i++ {
  fmt.Println(i)
}
```

For-loop, range:

```go
for i, element := range array {
  fmt.Println(array[i])
  fmt.Println(element)
}
```

While-like-loop:

```go
j := 0
isLessThanFive := true {
for isLessThanFive {
  if j >= 5 {
    isLessThanFive = false
  }

  fmt.Println(j)
  j++
}
```

Break:

```go
i := 0
for {
  if i >= 5 {
    break
  }

  fmt.Println(i)
  i++
}
```

Continue:

```go
i := 0
for {
  if i <= 5 {
    i++
    continue
  }

  fmt.Println("Last iteration!")
  break

}
```

Infinite:

```go
for {
  doSomethingForever()
}
```

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

## Channels

Channels are a typed conduit which you can send and receive values with the
channel operator. <-

```go
func main() {
	c := make(chan int)

	go gimmeBack10(c)

	a := <- c

	fmt.Println(a)
}

func gimmeBack10(c chan int) {
	c <- 10
}
```
